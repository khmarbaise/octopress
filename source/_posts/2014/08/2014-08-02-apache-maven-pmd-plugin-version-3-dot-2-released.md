---
layout: post
title: "Apache Maven PMD Plugin Version 3.2 Released"
date: 2014-08-02 15:23
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.2](http://maven.apache.org/plugins/maven-pmd-plugin/).

A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11140&version=20123)

Task:

 * {% chjl MPMD-188 %} Require Java 6
 * {% chjl MPMD-182 %} Upgrade to PMD 5.1.2


Enjoy,

-The Maven team
