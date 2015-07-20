---
layout: post
title: "Apache Maven Checkstyle Plugin Version 2.16 Released"
date: 2015-07-20 19:39
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.16](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build if violations are detected.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.16</version>
</plugin>
``` xml


Release Notes - Apache Maven Checkstyle Plugin - Version 2.16

Bugs:

 * {% ajl MCHECKSTYLE-295 %} Test resources are not included
 * {% ajl MCHECKSTYLE-271 %} checkstyle plugin fails with default ruleset and checkstyle 6.2

Improvements:

 * {% ajl MCHECKSTYLE-290 %} add a history table to show which version of Chesktyle is used by default in which version of m-checkstyle-p
 * {% ajl MCHECKSTYLE-284 %} Remove config/sun_checks.xml and use the one built into Checkstyle 6.2+
 * {% ajl MCHECKSTYLE-272 %} Upgrade to Checkstyle 6.2

Tasks:

 * {% ajl MCHECKSTYLE-285 %} Remove config/maven_checks.xml by removing the dependency on maven-shared-resources:2
 * {% ajl MCHECKSTYLE-278 %} Require Java 7
 * {% ajl MCHECKSTYLE-268 %} Add flag/option to use built-in Google style


Enjoy,

-The Maven team

