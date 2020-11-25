---
layout: post
title: "Apache Maven JLink Plugin Version 3.0.0 Released"
date: 2020-11-25 20:30:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JLink Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-jlink-plugin/).

This is the first public release of this plugin. It is explicitly an alpha version which 
means you can give feedback how to use it or how to improve the plugin.

The JLink Plugin is intended to create a [Modular Java Run-Time Images](https://openjdk.java.net/jeps/220) via jlink.

https://maven.apache.org/plugins/maven-jlink-plugin/

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-jlink-plugin</artifactId>
    <version>3.0.0</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-jlink-plugin/download.cgi

<!-- more -->

[Release Notes - Maven JLink Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12321432&version=12343851)

* Bugs:

  * {%ajl MJLINK-4 %} - NPE on execution
  * {%ajl MJLINK-5 %} - Parameter 'compression' is wrong. It is 'compress'
  * {%ajl MJLINK-23 %} - Allow setting additional modulepaths

* New Features:

  * {%ajl MJLINK-9 %} - Add support for multi module projects
  * {%ajl MJLINK-18 %} - Add support for JLink launcher

* Improvements:

  * {%ajl MJLINK-1 %} - Dependency Report produces exception based on JDK 9 based JAR file...
  * {%ajl MJLINK-3 %} - Improve verbose output during build
  * {%ajl MJLINK-6 %} - Allow set the jmods path
  * {%ajl MJLINK-14 %} - Let POM parent do it's work
  * {%ajl MJLINK-15 %} - Upgrade plexus-java 0.9.7
  * {%ajl MJLINK-26 %} - Can not create an image from a single module project without a dependency
  * {%ajl MJLINK-28 %} - Add WARNING in case of duplicate module names
  * {%ajl MJLINK-45 %} - make build Reproducible
  * {%ajl MJLINK-50 %} - Upgrade to Java 8 / Maven 3.1.0

* Dependency upgrades

  * {%ajl MJLINK-8 %} - Upgrade plexus-java 0.9.5
  * {%ajl MJLINK-10 %} - Upgrade maven-plugin-plugin to 3.5.1
  * {%ajl MJLINK-11 %} - Upgrade parent to 31
  * {%ajl MJLINK-13 %} - Remove hard code version for maven-site-plugin
  * {%ajl MJLINK-16 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
  * {%ajl MJLINK-17 %} - Add documentation information for GitHub
  * {%ajl MJLINK-20 %} - Upgrade plexus-archiver to 3.6.0
  * {%ajl MJLINK-21 %} - Upgrade test dependencies
  * {%ajl MJLINK-22 %} - Upgrade maven-plugins parent to version 32.
  * {%ajl MJLINK-24 %} - Upgrade bound plugins
  * {%ajl MJLINK-25 %} - Upgrade bounded plugins (maven-resources-plugin to 3.1.0)
  * {%ajl MJLINK-29 %} - Upgrade maven-compiler-plugin to version 3.8.0 in IT's
  * {%ajl MJLINK-30 %} - Upgrade parent to version 33
  * {%ajl MJLINK-31 %} - Upgrade plexus-java 0.9.11
  * {%ajl MJLINK-32 %} - Upgrade plexus-archiver 3.7.0
  * {%ajl MJLINK-33 %} - Upgrade maven-archiver 3.3.0
  * {%ajl MJLINK-34 %} - Upgrade java-language to 1.0.1
  * {%ajl MJLINK-35 %} - Upgrade plexus-archiver - 4.1.0
  * {%ajl MJLINK-37 %} - Upgrade maven-archiver to 3.4.0
  * {%ajl MJLINK-38 %} - Upgrade plexus-java 1.0.3
  * {%ajl MJLINK-43 %} - upgrade plexus-java 1.0.5
  * {%ajl MJLINK-44 %} - Upgrade maven-plugins to 34
  * {%ajl MJLINK-46 %} - Upgrade maven-archiver to 3.5.0


Enjoy,

-The Apache Maven team
