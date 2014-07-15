---
layout: post
title: "Mojo SonarQube Maven Plugin Version 2.4 Released"
date: 2014-07-15 18:38
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi,

The Mojo team is pleased to announce the release of the [SonarQube Maven Plugin
version 2.4](http://mojo.codehaus.org/sonar-maven-plugin/index.html)

This plugin aims at running SonarQube analysis for Maven projects.

To get this update, simply specify the version in your project's plugin configuration: 

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>sonar-maven-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12430&version=20388)

Improvements:

 * [MSONAR-70] - Use every available "sonar.*" property when running an analysis with Maven
 * [MSONAR-75] - Remove unexisting entries from "sonar.sources" and "sonar.tests" on projects with packaging=pom
 * [MSONAR-81] - On "war" modules the directory containing the web resources ("src/main/webapp" by default) should be automatically added to "sonar.sources"
 * [MSONAR-82] - By default the "pom.xml" file should be part of "sonar.sources"

Task:

 * [MSONAR-83] - Populate sonar.libraries


Enjoy,

The Mojo team.

Julien HENRY 
