---
layout: post
title: "Apache Maven Invoker Plugin Version 1.10 Released"
date: 2015-04-03 17:04
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 1.10](http://maven.apache.org/plugins/maven-invoker-plugin/).

The Invoker Plugin is used to run a set of Maven projects. The plugin can
determine whether each project execution is successful, and optionally can
verify the output generated from a given project execution.

This plugin is in particular handy to perform integration tests for other Maven
plugins. The Invoker Plugin can be employed to run a set of test projects that
have been designed to assert certain features of the plugin under test.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-invoker-plugin</artifactId>
  <version>1.10</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 1.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11441&version=20479)

Bugs:

 * {% chjl MINVOKER-155 %} - Invoker plugin does not allow multiple environment variables to be set
 * {% chjl MINVOKER-176 %} - Update to plexus-interpolation 1.21 for thread safety issues
 * {% chjl MINVOKER-183 %} - IT failing when path contains accents
 * {% chjl MINVOKER-185 %} - Cannot run invoker ITs on Windows with Maven 3.3.1

Improvements:

 * {% chjl MINVOKER-170 %} - Better document the usage of options for Maven
 * {% chjl MINVOKER-175 %} - Fix RAT Report
 * {% chjl MINVOKER-177 %} - Upgrade to maven-plugins version 25 to 26
 * {% chjl MINVOKER-178 %} - Make invoker copy support symlinks
 * {% chjl MINVOKER-179 %} - Upgrade to maven-plugins parent version 27
 * {% chjl MINVOKER-181 %} - Create single summary file
 * {% chjl MINVOKER-184 %} - Implement IT in an other way.
 * {% chjl MINVOKER-186 %} - Filter other files except pom like .mvn/extensions.xml

Enjoy,

-The Apache Maven team
