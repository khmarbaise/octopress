---
layout: post
title: "Apache Maven Checkstyle Plugin Version 3.1.1 Released"
date: 2020-02-23 12:38:47
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 3.1.1](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

The Checkstyle Plugin generates a report regarding the code style used by the
developers. For more information about Checkstyle, see
http://checkstyle.sourceforge.net/.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>3.1.1</version>
</plugin>
``` 

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317223&version=12345558)

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-checkstyle-plugin/download.cgi

* Bugs:

  * {%ajl MCHECKSTYLE-380 %} - Issue tracking page for maven-checkstyle-plugin is not available
  * {%ajl MCHECKSTYLE-384 %} - Incompatibility to Checkstyle version >= 8.24 - Upgrade to 8.28

* New Feature:

  * {%ajl MCHECKSTYLE-371 %} - Add logViolationCountToConsole property

* Improvements:

  * {%ajl MCHECKSTYLE-381 %} - Remove usage of deprecated class loading functionality from checkstyle
  * {%ajl MCHECKSTYLE-390 %} - Upgrade to checkstyle 8.29

* Task:

  * {%ajl MCHECKSTYLE-391 %} - Update parent to 34
  
* Dependency upgrades:

  * {%ajl MCHECKSTYLE-388 %} - Update internal dependencies with low impact
  * {%ajl MCHECKSTYLE-389 %} - MCHECKSTYLE-365 introduces regression with 'rules' aggregate count section on report

Enjoy,

-The Maven team

