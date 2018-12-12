---
layout: post
title: "Apache Maven Jar Plugin Version 3.1.1 Released"
date: 2018-12-12 20:10:36
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.1.1](https://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.1.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317526&version=12343046)


Bug:

 * {%ajl MJAR-241 %} - Jar package does not have a size in ZipEntry

Improvement:

 * {%ajl MJAR-260 %} - Upgrade to Archiver 3.3.0 and add ITs

Task:

 * {%ajl MJAR-251 %} - Add documentation information for GitHub

Dependency upgrades:

 * {%ajl MJAR-252 %} - Upgrade plexus-archiver to 3.6.0
 * {%ajl MJAR-255 %} - Upgrade maven-plugins parent to version 32
 * {%ajl MJAR-256 %} - Upgrade JUnit to 4.12
 * {%ajl MJAR-261 %} - Upgrade plexus-archiver 3.7.0

Enjoy,

- The Apache Maven team
