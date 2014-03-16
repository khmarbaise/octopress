---
layout: post
title: "Apache Maven PMD Plugin Version 3.1 Released"
date: 2014-03-16 10:25
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.1](http://maven.apache.org/plugins/maven-pmd-plugin/)

A Maven plugin for the PMD toolkit, that produces a report on both code rule violations 
and detected copy and paste fragments, as well as being able to fail the build based on these metrics.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.1]()

Bugs:

 * {% chjl MPMD-179 %} Plugin generates reports incompatible with the 'maven-jxr-plugin' version 2.4
 * {% chjl MPMD-176 %} upgrade to last 5.0.5
 * {% chjl MPMD-172 %} Warning about missing XRef for module with no source
 * {% chjl MPMD-168 %} Skip report generation if results are empty
 * {% chjl MPMD-167 %} CPD performance issues
 * {% chjl MPMD-166 %} Plugin fails when switching from 2.7.1 to 3.0.1

Improvement:

 * {% chjl MPMD-180 %} Remove redundant "Report" word on report name labels
 * {% chjl MPMD-175 %} Work around PMD bug #1155 which crashes the plugin with an empty ruleset element.
 * {% chjl MPMD-169 %} Support multi-threaded mode of PMD 5

New Feature:

 * {% chjl MPMD-181 %} Add flag to capture Benchmark information


Enjoy,

-The Maven team

