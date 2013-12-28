---
layout: post
title: "The Unknown creature - The Maven Release Cycle"
date: 2011-05-08 11:18:54
tags: Neuigkeiten,Maven
categories: [Neuigkeiten,Maven]
post-type: blog
---
In the meantime often people use [Maven](http://maven.apache.org) to build their software, but when it comes to the time
to release an artifact, they sometimes do unusual things in my opinion.  I have often observed that they manually set
the version numbers to the release version (just removing the ```-SNAPSHOT```) from it and build by hand and do the
deploy the same way.

But Maven is better than you think. Maven can do the whole thing within a single command.

```
mvn --batch-mode release:prepare release:perform
```

Let us take a detailed look on the above command which expresses calling two separate goals of the
[Maven Release Plugin](http://maven.apache.org/plugins/maven-release-plugin). You can of course call the above
command in two separate steps if you prefer that. Furthermore let us assume the artifact which will be released
has the version ```1.0.0-SNAPSHOT```.

```
mvn --batch-mode release:prepare
```

and furthermore

```
mvn --batch-mode release:perform
```
But now let us focus on the ```release:prepare``` goal what it exactly does:

  * The [release:prepare](http://maven.apache.org/plugins/maven-release-plugin/examples/prepare-release.html) will first check
    if your work area does not contain any uncommitted changes
  * It will check that there are no SNAPSHOT dependencies
  * It will change the version in the POMs from 1.0.0-SNAPSHOT to a new version 1.0.0
  * Transform the SCM information in the POM to include the final destination of the tag
  * Run the project tests against the modified POMs to confirm everything is in working order
  * Commit the modified POMs
  * Tag the code in the SCM with a version name
  * Bump the version in the POMs to a new value 1.0.1-SNAPSHOT
  * Commit the modified POMs


These steps require some configuration in your POM which have to be configured in the right way to get the
```release:prepare``` work otherwise the ```release:prepare``` will fail.

The most important thing is that your [SCM area in your POM](http://maven.apache.org/pom.html#SCM)
is correctly configured, cause ```release:prepare``` goal will make tags of your software automatically.
The following example gives you an impression how the SCM area must look like if you are using GitHub.


``` xml
<scm>
  <connection>scm:git:git://github.com/khmarbaise/Maven-License-Verifier-Plugin.git</connection>
  <developerConnection>scm:git:git@github.com:khmarbaise/Maven-License-Verifier-Plugin.git</developerConnection>
  <url>https://github.com/khmarbaise/Maven-License-Verifier-Plugin</url>
</scm>
```
The following example will show you how it looks like if you are using Subversion:

``` xml
<scm>
    <connection>scm:svn:http://svn.apache.org/repos/asf/tika/trunk</connection>
    <developerConnection>scm:svn:https://svn.apache.org/repos/asf/tika/trunk</developerConnection>
    <url>http://svn.apache.org/viewvc/tika/trunk</url>
</scm>
```
After successfully running the release:prepare phase you continue with the ```release:perform```.
The [release:perform](http://maven.apache.org/plugins/maven-release-plugin/examples/perform-release.html) will
do the following:

 * Checkout from an SCM URL with optional tag
 * Run the predefined Maven goals to release the project (by default, deploy site-deploy)

It is important to know that the above goals ```release:prepare``` and ```release:perform``` must be called inside the
same project one after another. To get a successful run of the ```release:perform``` it is needed to correctly configure the
[distributionManagement](http://maven.apache.org/pom.html#Distribution_Management) area in your POM, cause Maven will
deploy the artifact to the configured repository and will deploy the created site of the artifact to
the appropriate site area as well.

An example of an distributionManagement area looks like this:

``` xml
<distributionManagement>
    <repository>
      <id>ossrh-staging</id>
      <url>http://oss.sonatype.org/service/local/staging/deploy/maven2</url>
    </repository>
    <snapshotRepository>
      <id>ossrh-snapshots</id>
      <url>http://oss.sonatype.org/content/repositories/snapshots</url>
    </snapshotRepository>
    <site>
      <id>site.supose.org</id>
      <url>scp://minden205.server4you.de:/usr/local/vhosts/site.supose.org/maven-license-verifier-plugin</url>
    </site>
</distributionManagement>
```

In the above case the configuration is of an artifact which will be released to Maven Central
which cause some other [requirements to be fulfilled](http://maven.apache.org/guides/mini/guide-central-repository-upload.html).
In particular the artifacts [must be signed by gpg etc.](https://docs.sonatype.org/display/Repository/Sonatype+OSS+Maven+Repository+Usage+Guide)
but if you are releasing within your company you can define your own standards.
So if you configured everything well your release process will be very simple by just calling:

```
mvn --batch-mode release:prepare release:perform
```
But sometimes it happens that something is going wrong either in the release:prepare phase or during the
release:perform. If your release process fails in the release:prepare phase you have to do an
[release:rollback](http://maven.apache.org/plugins/maven-release-plugin/examples/rollback-release.html)
first, before doing anything else. You have to be aware of the fact
that depending where the release:prepare process has failed a tag for your release has already been created.
So you should check your version control whether the tag for the version has been created or not. If it has you have
to manually remove that tag. If you don not do it that way the next time you try release:prepare will fail based on the
existing tag.
If you are just a beginner with the Maven Release process you should call the release:prepare and release:perform
in two separate commands to be sure where the errors belong to.</p>
So after configuring etc. the parts in your POM a release of an artifact should not be a pain anymore.
