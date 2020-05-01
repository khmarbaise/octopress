---
layout: post
title: "Apache Maven Invoker Plugin Version 3.2.0 Released"
date: 2019-01-21 19:45:57
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 3.2.0](https://maven.apache.org/plugins/maven-invoker-plugin/).

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
  <version>3.2.0</version>
</plugin>
```


You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-invoker-plugin/download.cgi

<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 3.2.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12344638)


Bug:

 * {%ajl MINVOKER-243 %} - invoker:install doesn't copy transitive dependencies anymore (as of 3.1.0)

Improvements:

 * {%ajl MINVOKER-190 %} - build.log file location causes problems
 * {%ajl MINVOKER-225 %} - strange message ordering in case of post-build  script failure
 * {%ajl MINVOKER-245 %} - Support toolchain selector
 * {%ajl MINVOKER-246 %} - Support hierarchical invoker.properties

Dependency upgrade:

 * {%ajl MINVOKER-239 %} - Upgrade maven-plugins parent to version 32

Enjoy,

-The Apache Maven team
