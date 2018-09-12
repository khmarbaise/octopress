---
layout: post
title: "Apache Maven Shade Plugin Version 3.2.0 Released"
date: 2018-09-12 22:35:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.2.0](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.2.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-shade-plugin/download.cgi).


<!-- more -->

You can download the [appropriate sources etc. from the download page](http://maven.apache.org/plugins/maven-shade-plugin/download.cgi).
 
[Release Notes - Maven Shade Plugin - Version 3.2.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12343491)

Bug:

 * {%ajl MSHADE-289 %} - Maven Shade Plugin does not work under Java 10

Improvement:

 * {%ajl MSHADE-293 %} - Require Java 7

Dependency upgrades:

 * {%ajl MSHADE-294 %} - Upgrade maven-plugins parent to version 32
 * {%ajl MSHADE-296 %} - Upgrade maven-artifact-transfer 0.10.0

Enjoy,

-The Apache Maven team

