---
layout: post
title: "Apache Maven Project Info Reports Plugin Version 2.8.1 Released"
date: 2015-09-12 11:39
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the [Apache Maven Project 
Info Reports Plugin, version 2.8.1](http://maven.apache.org/plugins/maven-project-info-reports-plugin/).

The Maven Project Info Reports Plugin is a plugin that generates standard
reports for the specified project.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-project-info-reports-plugin</artifactId>
  <version>2.8.1</version>
</plugin>
```

<!-- more -->


[Release Notes - Apache Maven Project Info Reports Plugin - Version 2.8.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317821&version=12331185)

Bug:

 * {% ajl MPIR-300 %} Reporting plugins are reported with wrong version if version specified via pluginManagement

Improvement:

 * {% ajl MPIR-329 %} French translation in project-info-report_fr.properties

Task:

 * {% ajl MPIR-333 %} switch to Fluido
 * {% ajl MPIR-332 %} don't warn when removing path from git scm url


Enjoy,

-The Maven team
