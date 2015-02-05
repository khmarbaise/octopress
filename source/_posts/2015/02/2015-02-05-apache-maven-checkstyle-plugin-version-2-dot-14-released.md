---
layout: post
title: "Apache Maven Checkstyle Plugin Version 2.14 Released"
date: 2015-02-05 21:56
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.14](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

Generates a report on violations of code style and optionally fails the build
if violations are detected.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.14</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Checkstyle Plugin - Version 2.14](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11127&version=20631)

Bugs:

 * {% chjl MCHECKSTYLE-255 %} First checkstyle error is not printed in the console ouput
 * {% chjl MCHECKSTYLE-254 %} Update plexus-interpolation to avoid thread safety issues
 * {% chjl MCHECKSTYLE-249 %} ITs failing when building on Windows from distribution prepared on Unix

Improvements:

 * {% chjl MCHECKSTYLE-283 %} Move maven_checks.xml and maven-header.txt away from the plugin
 * {% chjl MCHECKSTYLE-282 %} add info on ruleset used in report intro
 * {% chjl MCHECKSTYLE-263 %} Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * {% chjl MCHECKSTYLE-262 %} Upgrade to maven-plugins parent version 27
 * {% chjl MCHECKSTYLE-257 %} display content/documentation of Checkstyle configurations predefined by maven-checkstyle-plugin in plugin's documentation site
 * {% chjl MCHECKSTYLE-256 %} add Java package information to output, instead of class name only
 * {% chjl MCHECKSTYLE-251 %} Upgrade to Checkstyle 5.8

Tasks:

 * {% chjl MCHECKSTYLE-281 %} fail if deprecated parameters are used and display update instructions
 * {% chjl MCHECKSTYLE-280 %} add documentation on upgrading Checkstyle at runtime
 * {% chjl MCHECKSTYLE-276 %} remove RedundantThrows rule from default configs
 * {% chjl MCHECKSTYLE-274 %} remove Avalon configuration since the Avalon project is retired


Enjoy,

-The Maven team

