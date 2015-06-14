---
layout: post
title: "Making GitHub Page for MojoHaus Plugins"
date: 2015-06-12 08:09
comments: true
categories: [MojoHaus,Github,BM,Maven,Maven-Plugins]
---
Manual Site Deployment to GitHub
--------------------------------

Unfortunately the Mojo Codehaus organization has closed their doors. In
consequence all projects had to move to a new home. The Mojo Codehaus Maven
plugins had to move as well so after the transition of the code etc. onto
[Github][github] and the newly created [The MojoHaus][git-mojohaus] organization we
need to get all the sites back online which contains the documentation of the
plugins.

During the transition the Subversion repositories have been migrated
to [Git repositories][mojohaus].

So now the questions how to get back the old documentation and which approach
should be followed to make further deployment of the site to GitHub pages as
simple as possible.

<!-- more -->

The original approach to deploy maven sites was to use a WebDAV access to the
Codehaus infrastructure which unfortunately was a little bit slow. So now we
are on Github and can improve those things.

But the first thing is to get back the documentation sites of all the migrated
plugins so the users have a chance to read the documentation. 

So the following things have to be done:

 1. How to regenerate all the plugin sites of the migrated plugins?
 2. How to make site deployment as simple as possible for plugin maintainers?

Unfortunately the first step has to be made manually. So first we need to make a 
clone of the plugin we want to regenerate the site.

```
$ git clone https://github.com/mojohaus/castor-maven-plugin.git
Cloning into 'castor-maven-plugin'...
remote: Counting objects: 1280, done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 1280 (delta 1), reused 0 (delta 0), pack-reused 1274
Receiving objects: 100% (1280/1280), 278.78 KiB | 0 bytes/s, done.
Resolving deltas: 100% (474/474), done.
Checking connectivity... done.
```

You can look which releases have been created:

```
$ git tag
castor-maven-plugin-1.0
castor-maven-plugin-1.5
castor-maven-plugin-2.0
castor-maven-plugin-2.0-alpha1
castor-maven-plugin-2.1
castor-maven-plugin-2.5
```

So to get the latest version of the documentation online we have to checkout 
the state of the latest release which is in this case `castor-maven-plugin-2.5`.

```
$ git checkout castor-maven-plugin-2.5
..
```

So next is to generate the site documentation by the appropriate call.

```
$ mvn site
```

This will result in the appropriate documentation in `target/site`. So now it is
best to create the appropriate `gh-pages` branch for taking the content of the site.

```
$ git checkout --orphan gh-pages
```
Afterwards you have to clean up the folders and remove everything except the
`target` folder and copy the content of the generated site. But do not forget
to add a `.gitignore` file to prevent adding the `target` folder.

```
$ rm -fr src pom.xml pom*.xml LICENSE*
$ cp -r target/site/. .
$ git add .
```

and finally you have to commit and push the site to GitHub.

```
$ git commit -a -m"Site regenerated after transition"
$ git push -u origin gh-pages
```
After a few seconds the content should be available and for MojoHaus you can access now
the [documentation for the plugin](http://www.mojohaus.org/castor-maven-plugin/).

Automatic Site Deployment to GitHub
-----------------------------------

So let us take a look onto the second step and see how to improve the site deployment 
for further development at [MojoHaus][mojohaus]
The first thing you need to do is to add an approriate `distributionManagement` like
the following:

``` xml
<distributionManagement>
  <site>
    <id>github</id>
    <url>scm:git:git@github.com:mojohaus/castor-maven-plugin.git</url>
  </site>
</distributionManagement>
```

Apart from the above you have to use the [maven-site-plugin in version
3.4][maven-site-plugin] Furthermore you have to add the following supplemental
configuration for maven-site-plugin:

``` xml
<pluginManagement>
  <plugins>
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-site-plugin</artifactId>
      <configuration>
        <topSiteURL>${project.distributionManagement.site.url}</topSiteURL>
      </configuration>
    </plugin>
  </plugins>
</pluginManagement>
```

This is needed to calculate the correct root location if you do `mvn site:stage`. A symptom
of missing the above configuration is having a folder `target/castor-maven-plugin.git` folder
which contains the generated site instead of `target/staging`.

So now we would like to transfer the site content to GitHub via the [maven-scm-publish-plugin][maven-scm-publish-plugin].
Getting this to we need to add the configuration for [maven-scm-publish-plugin][maven-scm-publish-plugin] like the following.
In this case we define `scmBranch` to point to `gh-pages` which is the default branch where GitHub 
serves content from. This might be changed if you are on the organization level where the `master`
branch is used for that.

``` xml
<build>
  <pluginManagement>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-scm-publish-plugin</artifactId>
        <version>1.1</version>
        <configuration>
          <scmBranch>gh-pages</scmBranch>
        </configuration>
      </plugin>
    </plugins>
  </pluginManagement>
</build>
```
So now it is easy to deploy the site to GitHub simply by using the following:

```
$ mvn clean site site:tage publish-scm:scm-publish
```

If you have a multi-module project you have to separate the steps a little bit like this:

```
$ mvn clean site site:tage 
$ mvn publish-scm:scm-publish
```

To simplify your work you could add a little script which contains the above two steps and 
finally you can call the script.

Ah not to miss things here. The configuration of the distributionManagement must be done in every single plugin
but the configuration for maven-site-plugin and maven-publish-scm-plugin could be moved into a parent 
pom (like mojo parent) to simplify configuration of plugins.

[maven-scm-publish-plugin]: http://maven.apache.org/plugins/maven-scm-publish-plugin/
[maven-site-plugin]: http://maven.apache.org/plugins/maven-site-plugin/
[github]: https://github.com
[git-mojohaus]: https://github.com/mojohaus/
[mojohaus]: http://www.mojohaus.org/

