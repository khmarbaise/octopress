---
layout: post
title: "Apache Maven Shade Plugin Version 2.2 Released"
date: 2013-11-30 18:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shade Plugin, version 2.2](http://maven.apache.org/plugins/maven-shade-plugin/)

This plugin provides the capability to package the artifact in an
uber-jar, including its dependencies and to shade - i.e. rename - the
packages of some of the dependencies.

<!-- more -->

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>2.2</version>
</plugin>
```

[Release Notes - Apache Maven Shade Plugin - Version 2.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11540&version=18768)

Improvements:

 * {% chjl MSHADE-158 %} - Allow shading of test jar

Have fun.
