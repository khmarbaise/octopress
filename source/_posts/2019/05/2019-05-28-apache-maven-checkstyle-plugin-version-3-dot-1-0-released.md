---
layout: post
title: "Apache Maven Checkstyle Plugin Version 3.1.0 Released"
date: 2019-05-28 15:38:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 3.1.0](https://maven.apache.org/plugins/maven-checkstyle-plugin/).

The Checkstyle Plugin generates a report regarding the code style used by the
developers. For more information about Checkstyle, see
https://checkstyle.sourceforge.net/.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
``` 

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317223&version=12342397)

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-checkstyle-plugin/download.cgi

Bugs:

 * {% ajl MCHECKSTYLE-323 %} - usage of checkstyle 7.0 (jdk8 is required)
 * {% ajl MCHECKSTYLE-344 %} - StringIndexOutOfBoundsException in RuleUtil
 * {% ajl MCHECKSTYLE-347 %} - StringIndexOutOfBoundsException when checkstyle.violation.ignore set to empty value
 * {% ajl MCHECKSTYLE-365 %} - Site Report, Rules: Violation count incorrect for duplicate rules when one uses default severity

Improvements:

 * {% ajl MCHECKSTYLE-326 %} - Running mvn install works first time second it does not
 * {% ajl MCHECKSTYLE-350 %} - Lock version of animal-sniffer-maven-plugin
 * {% ajl MCHECKSTYLE-353 %} - Don't resolve any dependencies
 * {% ajl MCHECKSTYLE-374 %} - Replace deprecated methods in Checkstyle
 * {% ajl MCHECKSTYLE-375 %} - Upgrade all test XML doctypes

Dependency upgrades:

 * {% ajl MCHECKSTYLE-349 %} - Upgrade to parent pom 31
 * {% ajl MCHECKSTYLE-359 %} - Upgrade maven-plugins parent to version 32
 * {% ajl MCHECKSTYLE-360 %} - Upgrade maven-site-plugin to 3.7.1 for integration tests
 * {% ajl MCHECKSTYLE-366 %} - Upgrade checkstyle to a more recent version

Enjoy,

-The Maven team

