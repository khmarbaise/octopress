---
layout: post
title: "Apache Maven Eclipse Plugin Version 2.10 Released"
date: 2015-05-28 08:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Eclipse Plugin, version 2.10](http://maven.apache.org/plugins/maven-eclipse-plugin/).


This plugin is used to generate Eclipse IDE files (*.classpath, *.project,
*.wtpmodules and the .settings folder) for use with a project - if the M2E
Eclipse-Plugin does not fit you.

This release is the last one supporting Maven 2.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-eclipse-plugin</artifactId>
  <version>2.10</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Eclipse Plugin - Version 2.10](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317423&version=12330751)

Bugs:

 * {% ajl MECLIPSE-731 %} - eclipse:clean not deleting ./settings folder that it creates
 * {% ajl MECLIPSE-738 %} - NullPointerException in LinkedResource if <locationURI> is present in .project

Improvements:

 * {% ajl MECLIPSE-697 %} - Delete deprecated code
 * {% ajl MECLIPSE-721 %} - Improve documentation to explain why Eclipse sometimes does not import projects with correct project names.
 * {% ajl MECLIPSE-754 %} - UPdate plexus-archiver to 2.9,plexus-utils to 3.0.18 and maven-archiver to 2.5
 * {% ajl MECLIPSE-756 %} - Fix RAT Report
 * {% ajl MECLIPSE-757 %} - Add proper classpath entry names for Java 7 / 8
 * {% ajl MECLIPSE-758 %} - Use mojo annotations

New Feature:

 * {% ajl MECLIPSE-759 %} - Add goal to resolve dependencies in .classpath files of a workspace

Enjoy,

-The Apache Maven team


