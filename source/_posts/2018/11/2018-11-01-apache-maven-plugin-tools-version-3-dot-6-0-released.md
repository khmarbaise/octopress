---
layout: post
title: "Apache Maven Plugin Tools Version 3.6.0 Released"
date: 2018-11-01 13:30:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Tools, version 3.6.0](https://maven.apache.org/plugin-tools/).

The Maven Plugin Tools contains the necessary tools to generate  
rebarbative content like descriptor, help and documentation. In addition,  
it provides tools to write Maven Plugins in scripting languages like Ant  
or Beanshell.

The Maven Plugin Plugin is used to create a Maven plugin descriptor for  
any Mojo's found in the source tree, to include in the JAR. It is also  
used to generate report files for the Mojos as well as for updating the  
plugin registry, the artifact metadata and generating a generic help goal.

 * https://maven.apache.org/plugin-tools/
 * https://maven.apache.org/plugin-tools/maven-plugin-plugin/

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugin-plugin</artifactId>
  <version>3.6.0</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins-tools/download.cgi).

<!-- more -->

[Release Notes - Maven Plugin Tools - Version 3.6.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12343309&styleName=Text&projectId=12317820)

Bugs:

 * {%ajl MPLUGIN-336 %} - broken in JDK 10/JDK 11 - IllegalArgumentException
 * {%ajl MPLUGIN-337 %} - Try to derive JDK requirements also from release parameter

Tasks:

 * {%ajl MPLUGIN-332 %} - remove plugin:updateRegistry goal, which is unused in Maven 3
 * {%ajl MPLUGIN-344 %} - Upgrade plexus-archiver 3.6.0

Dependency upgrade:

 * {%ajl MPLUGIN-342 %} - Upgrade maven-parent to 33

Enjoy,

-The Apache Maven team

