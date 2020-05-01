---
layout: post
title: "Apache Maven Jar Plugin Version 3.0.1 Released"
date: 2016-06-10 22:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.0.1](https://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.0.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317526&version=12335708)

Bug:

 * {% ajl MJAR-226 %} - Memory issues - Upgrade maven-archiver to 3.1.0

Improvements:

 * {% ajl MJAR-219 %} - Improve confusing text wrt Jarsigner plugin on Usage page
 * {% ajl MJAR-225 %} - Upgrade maven-plugins to version 30
 * {% ajl MJAR-227 %} - Upgrade of 'plexus-archiver' to version 3.3.

Enjoy,

- The Apache Maven team
