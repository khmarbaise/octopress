---
layout: post
title: "Apache Maven Shade Plugin Version 3.2.1 Released"
date: 2018-11-12 12:45:37
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.2.1](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.2.1</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven Shade Plugin - Version 3.2.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12344059)

Bug:

 * {%ajl MSHADE-302 %} - maven-shade-plugin fails to minimize JAR with Java 11

Improvement:

 * {%ajl MSHADE-303 %} - Suppress module-info.class warning if the file if filtered

Task:

 * {%ajl MSHADE-301 %} - java11 support

Dependency upgrade:

 * {%ajl MSHADE-299 %} - Upgrade maven-dependency-tree to 3.0.1

Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
