---
layout: post
title: "Apache Maven Checkstyle Plugin Version 2.12 Released"
date: 2014-03-14 18:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.12](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build if violations are detected.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.12</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 2.12](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11127&styleName=Html&version=19723)

Tasks:
 * {% chjl MCHECKSTYLE-222 %} Resource-only project is not checked
 * {% chjl MCHECKSTYLE-221 %} ResourceIncludes default value is wrong
 * {% chjl MCHECKSTYLE-219 %} When no license is specified, ALv2 from maven-checkstyle-plugin is used
 * {% chjl MCHECKSTYLE-218 %} Put file anchor directly on the h2 tag
 * {% chjl MCHECKSTYLE-213 %} Upgrade Doxia dependencies
 * {% chjl MCHECKSTYLE-212 %} Upgrade to Checkstyle 5.7
 * {% chjl MCHECKSTYLE-211 %} allow inline configuration for checkstyle plugin
 * {% chjl MCHECKSTYLE-210 %} Resource bundles have wrong file encoding
 * {% chjl MCHECKSTYLE-209 %} Correct grammar, make icons and text consistent in the report
 * {% chjl MCHECKSTYLE-208 %} Plugin generates reports incompatible with the 'maven-jxr-plugin' version 2.4
 * {% chjl MCHECKSTYLE-207 %} file handle leak - leading to failed builds
 * {% chjl MCHECKSTYLE-205 %} NPE in CheckstyleReportGenerator.doFilesSummary:654 version 2.11 regression
 * {% chjl MCHECKSTYLE-190 %} Add user property for checkstyle:consoleOutput
 * {% chjl MCHECKSTYLE-182 %} Use Maven log levels when logging to console
 * {% chjl MCHECKSTYLE-169 %} Suppressions property is incorrectly set if suppressions file is on classpath


Enjoy,

-The Maven team
