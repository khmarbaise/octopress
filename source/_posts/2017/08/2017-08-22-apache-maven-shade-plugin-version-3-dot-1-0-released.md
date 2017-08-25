---
layout: post
title: "Apache Maven Shade Plugin Version 3.1.0 Released"
date: 2017-08-22 09:30:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.1.0](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-shade-plugin/download.cgi).


<!-- more -->

You can download the [appropriate sources etc. from the download page](http://maven.apache.org/plugins/maven-shade-plugin/download.cgi).
 
[Release Notes - Maven Shade Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12331395).

Bugs:

 * {% ajl MSHADE-242 %} - Plugin does not work with Java 9
 * {% ajl MSHADE-247 %} - NullpointerException when createSourcesJar = true and source jar cannot be found
 * {% ajl MSHADE-253 %} - NullPointerException if minimizeJar == true && packaging == pom
 * {% ajl MSHADE-255 %} - IllegalArgumentException on relocating class
 * {% ajl MSHADE-258 %} - RemappingClassAdapter is deprecated and throws an exception with ASM 6.0 beta

Improvement:

 * {% ajl MSHADE-257 %} - Bad zero length source jars published by 3rd parties cause source jar creation to fail.


Enjoy,

-The Apache Maven team

