---
layout: post
title: "Apache Maven Surefire Plugin Version 2.22.2 Released"
date: 2019-05-05 23:55:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.22.2](https://maven.apache.org/plugins/maven-surefire-plugin/).


The release contains 1 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.
Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.22.2</version>
</plugin>
```

or for failsafe:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.22.2</version>
</plugin>
```

or for surefire-report:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.22.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Surefire - Version 2.22.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12343425)

Bugs:

 * {%ajl SUREFIRE-1614 %}- JUnit Runner that writes to System.out corrupts Surefire's STDOUT when using JUnit's Vintage Engine

Enjoy,

-The Apache Maven team

