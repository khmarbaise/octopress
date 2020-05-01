---
layout: post
title: "Apache Maven PMD Plugin Version 3.11.0 Released"
date: 2018-10-26 13:10:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.11.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-pmd-plugin/download.cgi).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.11.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.11.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12343406)

Bugs:

 * {%ajl MPMD-268 %} - Missing warnings about deprecated rules
 * {%ajl MPMD-266 %} - Aggregate report in multi-module projects does not use correct auxclasspath

New Feature:

 * {%ajl MPMD-272 %} - Support ignoreAnnotations options for CPD

Tasks:

 * {%ajl MPMD-271 %} - Upgrade pmd 6.8.0
 * {%ajl MPMD-270 %} - JDK 11 compatibility

Enjoy,

-The Maven team
