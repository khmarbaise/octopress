---
layout: post
title: "Apache Maven Plugin Tools Version 3.5.2 Released"
date: 2018-05-26 18:16:45
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Tools, version 3.5.2](https://maven.apache.org/plugin-tools/).

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

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugin-plugin</artifactId>
  <version>3.5.2</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins-tools/download.cgi).

<!-- more -->

[Release Notes - Maven Plugin Tools - Version 3.5.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317820&version=12342545&styleName=Text)

Dependency upgrades:

 * {%ajl MPLUGIN-333 %} - Upgrade parent to 31
 * {%ajl MPLUGIN-334 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {%ajl MPLUGIN-335 %} - Support JDK 10 for plugin generation: upgrade asm
 * {%ajl MPLUGIN-338 %} - Upgrade plexus-archiver to 3.6.0

Enjoy,

-The Apache Maven team

