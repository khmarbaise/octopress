---
layout: post
title: "Apache Maven Checkstyle Plugin 2.12.1 Released"
date: 2014-04-25 18:14
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.12.1](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build if violations are detected.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.12.1</version>
</plugin>
```

Release Notes - Apache Maven Checkstyle Plugin - Version 2.12.1

Bugs:

 * {% chjl MCHECKSTYLE-227 %} Avalon and turbine checks are broken
 * {% chjl MCHECKSTYLE-225 %} headerLocation no longer sets checkstyle.header.file
 * {% chjl MCHECKSTYLE-224 %} Warning about missing XRef for module with no files to check


Enjoy,

-The Maven team
