---
layout: post
title: "Apache Maven Invoker Plugin Version 2.0.0 Released"
date: 2015-07-02 07:51
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 2.0.0](http://maven.apache.org/plugins/maven-invoker-plugin/).

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
  <version>2.0.0</version>
</plugin>
```

Important Note:
This Release is intended for the bug fix MINVOKER-187 and in this relationship
is was necessary to upgrade the JDK minimum to JDK 1.6. This was the reason for
the version upgrade to 2.0.0.

<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 2.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317525&version=12332831)

Bug:

 * {% ajl MINVOKER-187 %} - Cloned IT project must be writable

Improvement:

 * {% ajl MINVOKER-192 %} - Using fluido skin

Enjoy,

-The Apache Maven team
