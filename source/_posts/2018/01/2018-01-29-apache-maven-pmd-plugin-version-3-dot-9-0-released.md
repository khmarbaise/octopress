---
layout: post
title: "Apache Maven PMD Plugin Version 3.9.0 Released"
date: 2018-01-29 22:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven PMD Plugin, version 3.9.0](http://maven.apache.org/plugins/maven-pmd-plugin/)


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
  <version>3.9.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven PMD Plugin - Version 3.9](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317621&version=12340516)

Bugs:

 * {%ajl MPMD-235 %} - Javadoc errors when building with java8
 * {%ajl MPMD-240 %} - Migrate plugin to Maven 3.0
 * {%ajl MPMD-244 %} - Maven PMD plugin fails but no reason is given for the failure
 * {%ajl MPMD-245 %} - targetJdk property should use maven.compiler.source by default
 * {%ajl MPMD-248 %} - cpd-check goal leaks file handle
 * {%ajl MPMD-249 %} - The plugin documentation point to old (deprecated) rulesets
 * {%ajl MPMD-251 %} - Invalid report XML is generated with includeXmlInSite=true

Improvements:

 * {%ajl MPMD-239 %} - Add documentation about upgrading PMD version at runtime
 * {%ajl MPMD-246 %} - Output details of processing errors
 * {%ajl MPMD-247 %} - Upgrade to PMD 6.0.1

Enjoy,

-The Maven team
