---
layout: post
title: "Apache Maven Shade Plugin Version 3.2.4 Released"
date: 2020-06-04 10:30:32
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.2.4](https://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.2.4</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven Shade Plugin - Version 3.2.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12346981)


* Bugs:

  * {%ajl MSHADE-363 %} - Breaking change to ResourceTransformer's API
  * {%ajl MSHADE-360 %} - ServicesResourceTransformer.modifyOutputStream swallows IOExceptions

* Tasks:

  * {&ajl MSHADE-365 %} - document Properties transformers available since 3.2.2 in separate table
  * {&ajl MSHADE-364 %} - Don't log as duplicate resource handled by a transformer


Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
