---
layout: post
title: "Apache Maven Checkstyle Plugin Version 2.17 Released"
date: 2015-10-19 07:47:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.17](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build if violations are detected.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.17</version>
</plugin>
``` 

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 2.16](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317223&version=12333072)

Bugs:

 * {% ajl MCHECKSTYLE-302 %} - Using inline configuration does not work with Maven 2.2.1
 * {% ajl MCHECKSTYLE-304 %} - Using inline configuration, checkstyle-checker.xml is generated using DTD v1.2
 * {% ajl MCHECKSTYLE-310 %} - Parrallel build failing with various errors
 * {% ajl MCHECKSTYLE-311 %} - "mvn clean site -Preporting" fails with Could not find resource 'config/maven_checks.xml'

Improvements:

 * {% ajl MCHECKSTYLE-291 %} - Change format of violation message
 * {% ajl MCHECKSTYLE-293 %} - Update to use non deprecated method Checker.setClassLoader()

Tasks:

 * {% ajl MCHECKSTYLE-307 %} - Upgrade to Checkstyle 6.11
 * {% ajl MCHECKSTYLE-313 %} - Upgrade to Checkstyle 6.11.2


Enjoy,

-The Maven team

