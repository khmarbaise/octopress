---
layout: post
title: "Apache Maven Checkstyle Plugin 2.11 Released"
date: 2013-11-16 15:54
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---

The Apache Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.11](http://maven.apache.org/plugins/maven-checkstyle-plugin/)

This plugin integrates checkstyle into the build.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.11</version>
</plugin>
```

The [Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11127&version=19110)

<!-- more -->

The following bugs have been fixed:

* {% chjl MCHECKSTYLE-192 %} - Properties files are only processed in the report, but not in the mojo
* {% chjl MCHECKSTYLE-193 %} - Resource files get included regardless of explicit sourceDirectory / includes / excludes configuration
* {% chjl MCHECKSTYLE-197 %} - Documentation: Check goal is incorrectly described
* {% chjl MCHECKSTYLE-202 %} - The link on Usage page to 'Maven 3.x Compatibility Notes' is not correct


The following improvements:

* {% chjl MCHECKSTYLE-191 %} - Make name of TreeWalker configurable
* {% chjl MCHECKSTYLE-199 %} - Make resource file processing configurable
* {% chjl MCHECKSTYLE-204 %} - Errors in the check goal are not very prominent in the Maven output

