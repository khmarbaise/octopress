---
layout: post
title: "Apache Maven Shared Dependency Analyzer Version 1.8 Released"
date: 2018-01-17 21:30:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Dependency Analyzer Version 1.8](https://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

You should specify the version in your project's dependency list:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.8</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Dependency Analzyer Version 1.8](https://issues.apache.org/jira/projects/MSHARED/versions/12340500)

Bugs:

 * {%ajl MSHARED-665 %} - ASMDependencyAnalyzer.analyze(...) returns non-classes
 * {%ajl MSHARED-674 %} - Maven Dependency Analyzer ignores Java 8 type annotations

Dependency upgrade:

 * {%ajl MSHARED-660 %} - Upgrade to asm 6.0 for JDK9 

Enjoy,

-The Apache Maven team

