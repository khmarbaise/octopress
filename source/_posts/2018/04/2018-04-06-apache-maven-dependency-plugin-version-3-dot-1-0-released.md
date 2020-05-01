---
layout: post
title: "Apache Maven Dependency Plugin Version 3.1.0 Released"
date: 2018-04-06 18:20:54
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependecy Plugin, version 3.1.0](https://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It
can copy and/or unpack artifacts from local or remote repositories to a
specified location.

https://maven.apache.org/plugins/maven-dependency-plugin/

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-dependency-plugin</artifactId>
    <version>3.1.0</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-dependency-plugin/download.cgi


<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317227&version=12341595)


Bugs:

 * {%ajl MDEP-559 %} - Java 9 bytecode cannot be parsed
 * {%ajl MDEP-603 %} - dependency:analyze fails on JDK 9 / JDK 10 

Improvement:

 * {%ajl MDEP-605 %} - Add documentation information for GitHub

Dependency upgrades:

 * {%ajl MDEP-584 %} - Upgrade plexus-utils to version 3.1.0
 * {%ajl MDEP-585 %} - Upgrade plexus-archiver to 3.5.
 * {%ajl MDEP-599 %} - Upgrade parent to 31

Many thanks to all reporters/contributors/testers of this release.

Reporters:

 * MDEP-559: Ben Alex

Testers:

 * Mark Raynsford

Enjoy,

-The Apache Maven team
