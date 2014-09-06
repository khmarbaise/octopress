---
layout: post
title: "Mojo Build Helper Maven Plugin Version 1.9.1 Released"
date: 2014-09-06 09:49
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[Build Helper Maven Plugin Version 1.9.1](http://mojo.codehaus.org/build-helper-maven-plugin/).

This plugin contains various small independent goals to assist with Maven
build lifecycle.

To get this update, simply specify the version in your project's plugin
configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>build-helper-maven-plugin</artifactId>
  <version>1.9.1</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11702&version=20534)

Bugs:

 * {% chjl MBUILDHELPER-69 %} - buildNumber parsed results are different between snapshot and release
 * {% chjl MBUILDHELPER-70 %} - Invalid usage of String.compareTo

Task:

 * {% chjl MBUILDHELPER-68 %} - maven 2.2.1 as minimum maven runtime

Enjoy,

The Mojo team.
