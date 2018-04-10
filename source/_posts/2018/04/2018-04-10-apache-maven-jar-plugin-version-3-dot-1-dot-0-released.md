---
layout: post
title: "Apache Maven Jar Plugin Version 3.1.0 Released"
date: 2018-04-10 17:20
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.1.0](http://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317526&version=12342349)

Bugs:

 * {%ajl MJAR-221 %} - Link to wiki page should be removed now that Codehaus is shut down
 * {%ajl MJAR-237 %} - Navigation link "Creating an Executable JAR File" is wrong.
 * {%ajl MJAR-240 %} - maven-jar-plugin index.html - bad links in left column Examples section
 * {%ajl MJAR-245 %} - Additional attached jar: role of classifier
 * {%ajl MJAR-249 %} - Get Build working on JDK 10

Improvements:

 * {%ajl MJAR-235 %} - Update life cycle bound plugin versions
 * {%ajl MJAR-236 %} - Keep maven-compiler-plugin to 3.5.1 based on JDK9 issues

Dependency upgrades:

 * {%ajl MJAR-243 %} - maven-archiver 3.1.1 to 3.2.0
 * {%ajl MJAR-246 %} - Upgrade parent to 31

Enjoy,

- The Apache Maven team
