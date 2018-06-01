---
layout: post
title: "Apache Maven Invoker Plugin Version 3.1.0 Released"
date: 2018-05-31 01:34:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 3.1.0](http://maven.apache.org/plugins/maven-invoker-plugin/).

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
  <version>3.1.0</version>
</plugin>
```


You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-invoker-plugin/download.cgi

<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12341131&styleName=Text&projectId=12317525)

Bugs:

 * {%ajl MINVOKER-191 %} - “Artifact is not fully assembled” error with maven-invoker-plugin in parallel/multi thread build
 * {%ajl MINVOKER-224 %} - Unable to set cloneProjectsTo to null

New Feature:

 * {%ajl MINVOKER-233 %} - Call an invoker with a given timeout

Improvement:

 * {%ajl MINVOKER-236 %} - improve display of setup jobs

Tasks:

 * {%ajl MINVOKER-228 %} - Improve documentation: "Using with other integration test frameworks" page
 * {%ajl MINVOKER-237 %} - Upgrade to JDK 7 minimum.

Dependency upgrades:

 * {%ajl MINVOKER-232 %} - Upgrade parent to 31
 * {%ajl MINVOKER-234 %} - Upgrade maven-shared-utils to 3.2.1
 * {%ajl MINVOKER-235 %} - Upgrade plexus-utils 3.1.0
 * {%ajl MINVOKER-238 %} - Upgrade maven-invoker to 3.0.1

Enjoy,

-The Apache Maven team
