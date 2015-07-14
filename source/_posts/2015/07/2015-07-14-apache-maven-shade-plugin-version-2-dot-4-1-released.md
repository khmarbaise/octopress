---
layout: post
title: "Apache Maven Shade Plugin Version 2.4.1 Released"
date: 2015-07-14 20:43
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 2.4.1](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>2.4.1</version>
</plugin>
```

<!-- more -->

You can download the [appropriate sources etc. from the download page](http://maven.apache.org/plugins/maven-shade-plugin/download.cgi).
 
[Release Notes - Maven Shade Plugin - Version 2.4.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12332978)

Bugs:

 * {% ajl MSHADE-148 %} - Shade Plugin gets stuck in infinite loop building dependency reduced POM
 * {% ajl MSHADE-194 %} - Reporting uses maven-invoker-plugin version 1.9 instead of 1.10

Enjoy,

-The Apache Maven team
