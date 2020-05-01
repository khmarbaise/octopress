---
layout: post
title: "Maven: How To Create a Release"
date: 2016-08-08 08:15
comments: true
categories: [BM,Maven,Maven Best Practice]
---
You are working on your project and now the time has come where you would like
to create a release of your project. So how to do this with Maven?

There are existing in general several solutions to achieve the goal. 
Those different solutions will be described in this article.

Maven Release Plugin
--------------------

The most obvious one and probbaly most suggested variant is to use the Maven
Release Plugin to create a release.

So as a short overview how the Maven Release plugins works is:

``` 
mvn release:prepare ..
```

So you call the prepare goal of the plugin which will do [several checks to be
sure][maven-release-plugin-prepare] you will get a reproducible state of your
project. By default you can give the release version of your project
interactivaly or if you like to take the defaults you can handle this via
`--batch-mode` option. So after changing the pom file a build will run to make
sure everything works well and finally a tag in your version control will be
created and the next development version will be set in your pom files. 

So next you will call the final part of Maven Release plugin the [perform
goal][maven-release-plugin-perform] which will checkout the code you have tagged 
in the previous step and run `deploy site-deploy` on this checked out state. 
Often you call the above goal in one go which means:

``` 
mvn release:prepare release:perform --batch-mode
```

All your pom files will automatically updated with the new version etc. So no
manual work needed here.

If you think about this scenario you might say: Why do I need to build my
project during the release creation cause I already built my project before?
The intention for the Maven Release Plugin is to use it from your own computer
or where you do not have the support of a CI solution which creates the
releases. Furhtermore this can also be based on the usage of GPG keys to sign
artifacts etc. which only exist on your own machine so the Maven Release Plugin
is a good way to handle releases from your own machine.  Maven Release Plugin
is also used to release all Maven Plugins of the Apache Maven Project.


Versions Maven Plugin
---------------------

So an other variant to create a release can be achieved by using the [Versions
Maven Plugin][versions-maven-plugin] which you can use to create a release.

What you have to do is more or less the same as Maven Release Plugin would do.
You need to check if you missed to checkin sources etc. and afterwards you can
change the pom versions of your project by using the following:

```
mvn versions:set -DnewVersion=1.0.0
```
and all pom versions will be changed accordingly. Now you can simply checkin
the changed pom files and tag the code state and make:

```
mvn clean deploy
```
which will build your whole project and deploys the generated artifacts into
the configured remote repositories. Now you would like to continue developement
so you need to change the pom versions via:

```
mvn version:set -DnewVersion=1.0.1-SNAPSHOT
```
And you need to checkin in the changed pom files and now you can continue with
your developement for the next release.

You can of course script the above steps or better is to move those steps into
a CI solution like [Jenkins][jenkins].

This approach prevents some builds of your project but you need to change
the pom versions and do some checkins.

Super Fast Releases
-------------------

Starting with [Maven 3.2.1][maven-release-notes-3.2.1] you can define the pom
version by using the following possible properties: `${revision}`, `${sha1}`
and `${changelist}`. The example below will show one usage of this:

``` xml
  ..
  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>2.2.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>parent</artifactId>
  <version>${revision}</version>
  <packaging>pom</packaging>
  ..

```
This is a parent of a larger multi module build which contains serveral childs which look
like this:

``` xml

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.examples.j2ee</groupId>
    <artifactId>parent</artifactId>
    <version>${revision}</version>
  </parent>

  <artifactId>service</artifactId>
  <dependencies>
    <dependency>
      <groupId>com.soebes.examples.j2ee</groupId>
      <artifactId>service-client</artifactId>
      <version>${project.version}</version>
    </dependency>
    ...

   ..
```
Based on that you can now build your project simply by using the following:

```
mvn -Drevision=1.0.0-SNAPSHOT clean package
```
or to deploy a SNAPSHOT you can simply do this via:
```
mvn -Drevision=1.0.0-SNAPSHOT clean deploy
```
So there is no need to change the pom files and checkin. But there exists a
drawback. You need to define the `-Drevision=...` for every call of Maven which
is not very convenient.

You can handle this by using the following profile:

``` xml
  <profiles>
    <profile>
      <id>default-version</id>
      <activation>
        <property>
          <name>!revision</name>
        </property>
      </activation>
      <properties>
        <revision>1-SNAPSHOT</revision>
      </properties>
    </profile>
  </profiles>
```
which will define the revison in case the property has not been given on
command line by using a default value `1-SNAPSHOT`.

Starting with [Maven 3.3.1][maven-release-notes-3.3.1] you can configure Maven
command line parameters in a `.mvn/maven.config` file which contains the
following for our case:

```
-Drevision=1.0.0-SNAPSHOT
```
So with Maven 3.3.1+ you can now simply call Maven via:

```
mvn clean deploy
```
More convenient? No profile needed.

But wait. What if i like to create a different version? Yes you need to change
the `.mvn/maven.config` file and you should of course checkin the change in your
version control.

Unfortunately you can't overwrite the property which you have defined in the
`.mvn/maven.config` via command line like this:

```
mvn clean deploy -Drevision=2.0.0-SNAPSHOT
```

This [problem has already been adressed and solved][MNG-6078] for the upcoming
Maven 3.4.0 release where you can simply do that via the latter.

Starting with Maven 3.4.0 you do not need a profile so you can define a default
value for your revision in `.mvn/maven.config` file and overwrite the value
always via command line. This is very convenient in CI tools etc. and furthermore
eliminates the usage of those version numbers in your pom file which always 
produce conflicts if you do a merge from one branch to another.


[maven-release-plugin]: https://maven.apache.org/plugins/maven-release-plugin/
[maven-release-plugin-prepare]: https://maven.apache.org/maven-release/maven-release-plugin/examples/prepare-release.html
[maven-release-plugin-perform]: https://maven.apache.org/maven-release/maven-release-plugin/examples/perform-release.html
[versions-maven-plugin]: https://www.mojohaus.org/versions-maven-plugin/
[jenkins]: https://jenkins.io/
[MNG-6078]: https://issues.apache.org/jira/browse/MNG-6078
[maven-release-notes-3.2.1]: https://maven.apache.org/docs/3.2.1/release-notes.html#Continuous_delivery_friendly_versions
[maven-release-notes-3.3.1]: https://maven.apache.org/docs/3.3.1/release-notes.html#JVM_and_Command_Line_Options
