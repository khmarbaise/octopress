---
layout: post
title: "Apache Maven Shade Plugin Version 2.3 Released"
date: 2014-05-02 10:23
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shade Plugin, version 2.3](http://maven.apache.org/plugins/maven-shade-plugin/)

This plugin provides the capability to package the artifact in an
uber-jar, including its dependencies and to shade - i.e. rename - the
packages of some of the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>2.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shade Plugin - Version 2.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11540&version=19828)

Bug:
 * {% chjl MSHADE-166 %} - maven-shade-plugin not compatible with Java 8

Improvment:

 * {% chjl MSHADE-167] - [PATCH %} When individual classes are renamed, they
are not debuggable


Have Fun!

The Apache Maven team
