---
layout: post
title: "Apache Maven Jar Plugin Version 3.0.2 Released"
date: 2016-06-23 19:09
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.0.2](https://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.0.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.0.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317526&version=12336062)

Bugs:

 * {% ajl MJAR-223 %} - classpathLayoutType is not taken into account when building the classpath attribute in the manifest
 * {% ajl MJAR-228 %} - Plugin generates wrong Class-Path in MANIFEST
 * {% ajl MJAR-229 %} - Upgrade maven-archiver to 3.1.1

Task:

 * {% ajl MJAR-230 %} - Upgrade of plexus-archiver to 3.4.

Enjoy,

- The Apache Maven team
