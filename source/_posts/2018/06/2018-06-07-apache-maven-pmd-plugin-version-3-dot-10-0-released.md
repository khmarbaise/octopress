---
layout: post
title: "Apache Maven PMD Plugin Version 3.10.0 Released"
date: 2018-06-07 08:05:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.10.0](http://maven.apache.org/plugins/maven-pmd-plugin/)


A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-pmd-plugin/download.cgi

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.10.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.9](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12342689&styleName=Text&projectId=12317621)


Bugs:

 * [MPMD-253] - PMD links to java Xref fail in aggregated report
 * [MPMD-257] - Allow to disable analysisCache completely, avoid warnings
 * [MPMD-258] - PMD output multiplies with every module in multi module projects
 * [MPMD-259] - FileNotFoundException with analysisCache=true, includeTests=true and no test classes

New Feature:

 * [MPMD-256] - Add maxAllowedViolations property for PMD

Improvements:

 * [MPMD-261] - Upgrade to PMD 6.4.0
 * [MPMD-263] - Add documentation information for GitHub
 * [MPMD-264] - Add rule priority to HTML report

Dependency upgrades:

 * [MPMD-252] - Upgrade parent to 31
 * [MPMD-262] - Upgrade maven-surefire/failsafe-plugin 2.21.0


Enjoy,

-The Maven team
