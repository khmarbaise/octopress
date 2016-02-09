---
layout: post
title: "Apache Maven Compiler Plugin Version 3.5.1 Released"
date: 2016-02-09 20:48
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.5.1](http://maven.apache.org/plugins/maven-compiler-plugin/).

The Compiler Plugin is used to compile the sources of your project. 

Attention: Starting with version 3.5, the maven-compiler-plugin requires
Maven 3 and won't work with Maven 2 anymore.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.5.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.5.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317225&amp;version=12334747)

Bug:

 * {% ajl MCOMPILER-236 %} -  Compilation error due to MCOMPILER-157 in deploy phase
 * {% ajl MCOMPILER-240 %} -  Generated sources directory should not be added to compiler's source roots
 * {% ajl MCOMPILER-262 %} -  When using annotationProcessorPaths, the project dependencies must not be added as well

Enjoy,

-The Apache Maven team


