---
layout: post
title: "Apache Maven PMD Plugin Version 3.7 Released"
date: 2016-10-16 19:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.7](http://maven.apache.org/plugins/maven-pmd-plugin/)


A Maven plugin for the PMD toolkit, that produces a report on both code rule
violations and detected copy and paste fragments, as well as being able to fail
the build based on these metrics.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pmd-plugin</artifactId>
  <version>3.7</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.7](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12334373)

Bugs:

 * {% ajl MPMD-162 %} - PMD/CPD report does not take into account pmd.excludeFromFailureFile
 * {% ajl MPMD-178 %} - ExcludeRoots doesn't handle subdirectories (PMD isn't working nicely with Android projects)
 * {% ajl MPMD-213 %} - Remove unnecessary (read-only) parameter "language" from check goal
 * {% ajl MPMD-219 %} - Maven PMD Plugin ignores PMD processing errors

Improvements:

 * {% ajl MPMD-212 %} - Add documentation and IT for MPMD-206
 * {% ajl MPMD-220 %} - Upgrade to PMD 5.5.1 (requires Java 7)
 * {% ajl MPMD-227 %} - Document multimodule configuration example
 * {% ajl MPMD-228 %} - Upgrade maven-plugins to version 30
 * {% ajl MPMD-229 %} - Cleanup POM, remove temporary workarounds

Tasks:

 * {% ajl MPMD-196 %} - Do not rely in tests on toLowerCase but on toLowerCase(Locale.ROOT)
 * {% ajl MPMD-226 %} - Require Java 7

Enjoy,

-The Maven team
