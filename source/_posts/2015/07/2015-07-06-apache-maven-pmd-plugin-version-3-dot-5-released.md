---
layout: post
title: "Apache Maven PMD Plugin Version 3.5 Released"
date: 2015-07-06 22:47
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.5](http://maven.apache.org/plugins/maven-pmd-plugin/).

A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12330969)

Bugs:

 * {% ajl MPMD-208 %} Warning about deprecated Rule name when using rulesets/maven.xml
 * {% ajl MPMD-205 %} Javascript violations won't fail the build

Improvements:

 * {% ajl MPMD-211 %} Upgrade plexus-resources from 1.0-alpha-7 to 1.1
 * {% ajl MPMD-209 %} Upgrade to PMD 5.3.2
 * {% ajl MPMD-206 %} Make the sourceDirectories configurable

New Feature:

 * {% ajl MPMD-207 %} Support Javascript and JSP for CPD

Enjoy,

-The Maven team
