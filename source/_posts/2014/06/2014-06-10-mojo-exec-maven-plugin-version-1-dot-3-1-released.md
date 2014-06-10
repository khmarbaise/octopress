---
layout: post
title: "Mojo Exec Maven Plugin Version 1.3.1 Released"
date: 2014-06-10 18:25
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[exec-maven-plugin version 1.3.1](http://mojo.codehaus.org/exec-maven-plugin/).


This plugin provides 2 goals to help execute system and Java programs.

To get this update, simply specify the version in your project's plugin
configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>exec-maven-plugin</artifactId>
  <version>1.3.1</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11240&version=20347)

Bugs:

 * [MEXEC-118] - Cannot execute .cmd scripts on Windows
 * [MEXEC-134] - MIT license text in tarball
 * [MEXEC-137] - Scripts with a .cmd extension do not get executed on Windows

Improvement:

 * [MEXEC-135] - Add ability to configure environment variables using an environment script

Task:

 * [MEXEC-136] - Failing IT




Enjoy,

The Mojo team.
