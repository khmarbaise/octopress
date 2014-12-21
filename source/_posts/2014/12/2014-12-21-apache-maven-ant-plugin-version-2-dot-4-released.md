---
layout: post
title: "Apache Maven Ant Plugin Version 2.4 Released"
date: 2014-12-21 14:57
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the
[Apache Maven Ant Plugin, version 2.4](http://maven.apache.org/plugins/maven-ant-plugin/).

The Ant Plugin generates build files for Ant 1.6.2 or above from the POM.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ant-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Ant Plugin - Version 2.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11124&version=15977)

Bug:

 * {% chjl MANT-65 %} - Invalid check for junit

Improvements:

 * {% chjl MANT-75 %} - Removed compatibility with Maven 2.0.X
 * {% chjl MANT-80 %} - Update version of plexus-utils to 3.0.18
 * {% chjl MANT-81 %} - Upgrade ant dep to 1.9.1
 * {% chjl MANT-82 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {% chjl MANT-83 %} - Upgrade JUnit from 3.8.1 to 4.11
 * {% chjl MANT-84 %} - Upgrade ant dep to 1.9.4 to be consistent with maven-antrun-plugin

Tasks:

 * {% chjl MANT-69 %} - use maven-plugin-tools' java 5 annotations
 * {% chjl MANT-76 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MANT-77 %} - Upgrade ant dep to 1.8.1

Enjoy,

-The Apache Maven team

