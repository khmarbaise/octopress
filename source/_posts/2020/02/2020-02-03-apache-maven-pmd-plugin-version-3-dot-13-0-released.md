---
layout: post
title: "Apache Maven PMD Plugin Version 3.13.0 Released"
date: 2020-02-03 21:57:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.13.0](https://maven.apache.org/plugins/maven-pmd-plugin/)

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
  <version>3.13.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.13.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12345409)

* Bugs:

  * {%ajl MPMD-288 %} - NullPointerException when File.list() returns null
  * {%ajl MPMD-289 %} - check: unable to find pmd.xml
  * {%ajl MPMD-292 %} - PMD Log is not always integrated into maven log
  * {%ajl MPMD-295 %} - Maven PMD Plugin fails on Java 13: Unsupported targetJdk value '13'

* New Feature:

  * {%ajl MPMD-269 %} - Display PMD version that is being used

* Improvements:

  * {%ajl MPMD-241 %} - Document the version relationship between plugin and pmd
  * {%ajl MPMD-287 %} - Add additional contribution information for GitHub
  * {%ajl MPMD-296 %} - Copy ruleset files into a subdirectory of target

* Wish:

  * {%ajl MPMD-225 %} - Create report even if no warnings have been found by default

* Tasks:

  * {%ajl MPMD-285 %} - remove pluginTools version override for build (which block reproducible build...)
  * {%ajl MPMD-293 %} - Fix integration test builds on jenkins

Dependency upgrade:

{%ajl MPMD-291 %} - Upgrade to PMD 6.21.0

Enjoy,

-The Maven team
