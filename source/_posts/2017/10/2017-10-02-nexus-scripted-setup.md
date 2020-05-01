---
layout: post
title: "Automated Setup of a Repository Manager"
date: 2017-10-02 19:30:34
comments: true
categories: [Nexus,Docker,REST API]
---
Previously I was working on a [Nexus Repository Manager][nexus-rpm] setup for
different environments like a test and a production environment with different [privileges][nexus-privileges], [roles][nexus-roles],
[repositories][nexus-repos], [users][nexus-users] etc.

The problem with such setups is simple: You usually do it manually which in
consequence is error-prone. If you are doing that more than once, it becomes
cumbersome and you are asking yourself: Isn't there a simpler solution to make
that setup more reproducible?

Fortunately there is a solution for that problem.

The [Nexus Repository Manager starting with version 3+][nexus-features] provides
a [Provisioning REST API][nexus-rest-api] which allows to upload scripts to
Nexus and execute those scripts which makes it possible to do such kind of setup in a scripted manner.

So now we have taken the first barrier. The next one is in front. How to test
such setups?

The simplest way to make experiments related to the Nexus Provisioning API is to
use a [Docker][docker] setup. You can simply get an default installation via a
[Docker Image][docker-image].

This can be started by using the following command:
```
docker run -d -p 8081:8081 --name nexus sonatype/nexus3:3.5.2
```
Afterwards you can use the [example scripts for provisioning][nexus-rest-api] as
a starting point.

There is a two step way to get something configured in Nexus. First upload the
script and afterwards run it. This can either been done
using `curl` manually on command line or you can use the `provision.sh` script
in [example scripting setup][nexus-scripting] which is much more convenient.

The above example project contains basic examples for different types of
setup tasks to do. So the easiest way to start is by cloning the repository
and change it based on your own requirements. I started with creating a separate
repository for keeping my scripts and changes. By the way you should use an IDE
to write the groovy scripts (IDEA IntelliJ for example). This makes implementing
scripts easier, cause you get code completion etc.

So now let's start with a real example. A script which will create a repository
(I have chosen to create a Maven repository) could look like this:

```
import org.sonatype.nexus.blobstore.api.BlobStoreManager
import org.sonatype.nexus.repository.maven.LayoutPolicy
import org.sonatype.nexus.repository.storage.WritePolicy
import org.sonatype.nexus.repository.maven.VersionPolicy

def testMavenReleaseRepository = repository.createMavenHosted(
  'test-maven-repository',
  BlobStoreManager.DEFAULT_BLOBSTORE_NAME,
  true,
  VersionPolicy.RELEASE,
  WritePolicy.ALLOW_ONCE
)
```
This will create a Maven repository named `test-maven-repository` which is
configured as a release repository. That means you are not allowed to upload an
artifact a second time which is the default for release repositories
(`VersionPolicy.RELEASE`) in Maven. That's valid for repository managers, too.
Furthermore it will use the `BlobStoreManager.DEFAULT_BLOBSTORE_NAME`
(`default`). The `true` represents the value for the
`strictContentTypeValidation` parameter.

So now if you have run a script on a running Nexus repository manager instance
inside a Docker container, you can check the configuration by looking
into the UI of Nexus and see if everything is like you expected it to be. If
you find something which is not the way as expected, you simply stop the docker
container, fix your script accordingly and start your container and run the
script again.

Wait a minute? Running over and over again? Manually checking? Wasn't that the
subject at the beginning of this article? Make it reproducible?

So there is a better way to do. Just simply write tests for those things.
This means just pick up a testing framework which supports a kind of web
testing. I have decided to use [Cypress][cypress] which was easy to setup
(unfortunately I had to register via Github. Why?) and with some kind of
searching for [JQuery][jquery] issues I had, it took me about two or three hours
to have a very good starting point.

So let's take a look how such a script looks like:

```
describe('test-usage-user Starting', function() {
  beforeEach(function(){
    cy.visit('/')
    // Login as "test-user"
    cy.contains('Sign in').click()
    cy.get('input[name=username]').clear().type('test-user')
    cy.get('input[name=password]').clear().type('test-user')
      .type('{enter}')
  })

  it('Start page', function() {
    cy.get('label').contains('Welcome').end()
    cy.get('label').contains('Welcome to Nexus Repository Manager!').end()
  })

  it('Checking account informations.', function() {
    cy.get('span').contains('test-user').end()
    cy.get('a[data-qtip="Hi, test-user. Manage your user account."]').end()

    // Select the account overview.
    cy.contains('test-user').click()

    // check the "Loading" box, cause it's there only a very short time...
    cy.get('div[role=presentation]').contains('Loading')

    cy.get('span').contains('This is used as your username.')
    cy.contains('Manage your account')

    cy.contains('Sign out').end()
    cy.get('label').contains('Account').end()
    cy.get('span').contains('test-user').end()

  })
  ..
})  
```
I have to admit there had been some challenges to get things working, cause it
seemed to me that the informations on the result pages of Nexus aren't intended
for testing, cause they contain generated numbers etc. and unfortunately no
unique identifiers for particular parts of the output. For example an id for a
list of repositories. That made the writing of the testing a bit hard and
verbose. For example the following snippet is to extract the information
for a single line from the list of repositories:

```
cy.get('table>tbody>tr[data-recordid="test-maven-public"]>td>div').then(function ($columns) {
    expect($columns).to.have.length(7)
    // 0 contains the icon
    expect($columns.eq(1)).to.contain('test-maven-public')
    expect($columns.eq(2)).to.contain('group')
    expect($columns.eq(3)).to.contain('maven2')
    expect($columns.eq(4)).to.contain('Online')
    // 5 contains copy URL
    // 6 contains link to get more details
})
```
So there is no human readable unique id in the `table`, something like
`<table id="repository-list"..`. Only by using the above `data-recordid` it was
possible to find the correct entries which means you have to know the name of
the repositories beforehand. This means if you need to check a list of
repositories you have to repeat the above code snippet several times.

So improving the output in a way to add better unique id's in a more human
oriented way would make it much easier to get things done based on the idea of
infrastructure as code.

In the end the provisioning API seemed to be not completed yet. So for
example a [configuration for LDAP][ldap-configuration] is a lot more complex
than I thought. But may be I have missed something. The current
implementation (as far as it goes) is very simple to use and makes it easy to
write such setup scripts which is a great thing.


[nexus-rpm]: https://www.sonatype.com/download-oss-sonatype
[nexus-rest-api]: https://help.sonatype.com/display/NXRM3/REST+and+Integration+API
[nexus-privileges]: https://help.sonatype.com/display/NXRM3/Security#Security-Privileges
[nexus-roles]: https://help.sonatype.com/display/NXRM3/Security#Security-Roles
[nexus-users]: https://help.sonatype.com/display/NXRM3/Security#Security-Users
[nexus-repos]: https://help.sonatype.com/display/NXRM3/Configuration#Configuration-RepositoryManagement
[nexus-features]: https://help.sonatype.com/display/NXRM3/Repository+Manager+Feature+Matrix
[nexus-scripting]: https://github.com/sonatype/nexus-book-examples/tree/nexus-3.x
[docker-repository]: https://github.com/sonatype/docker-nexus3
[docker-image]: https://hub.docker.com/r/sonatype/nexus/
[docker]: https://www.docker.com/
[cypress]: https://cypress.io
[jquery]: https://jquery.com/
[ldap-configuration]: https://stackoverflow.com/questions/39903588/nexus3-configure-ldap-with-api
