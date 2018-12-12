---
layout: post
title: "Apache Maven Help Plugin Version 3.1.1 Released"
date: 2018-12-12 19:45:37
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Help Plugin, version 3.1.1](https://maven.apache.org/plugins/maven-help-plugin/)

The Maven Help Plugin is used to get relative information about a project or
the system. It can be used to get a description of a particular plugin,
including the plugin's goals with their parameters and component requirements,
the effective POM and effective settings of the current build, and the profiles
applied to the current project being built.

Important Notes since Version 3.0.0

 * Maven 3+ only
 * JDK 7 minimum requirement
 

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-help-plugin</artifactId>
  <version>3.1.1</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/plugins/maven-help-plugin/download.cgi).
 

<!-- more -->

[Release Notes - Maven Help Plugin - Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317522&version=12343422)

Improvement:

 * {%ajl MPH-154 %} - The output of the plugin should be flushed when using forceStdout

Dependency upgrades:

 * {%ajl MPH-153 %} - Upgrade maven-plugins parent to version 32
 * {%ajl MPH-156 %} - Upgrade maven-artifact-transfer to 0.10.0
 * {%ajl MPH-157 %} - Upgrade plexus-interactivity-api 1.0-alpha-6
 * {%ajl MPH-158 %} - Upgrade xstream 1.4.11.1
 * {%ajl MPH-159 %} - Upgrade JUnit 4.12

Enjoy,

-The Apache Maven team

