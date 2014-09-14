---
layout: post
title: "Apache Shared Component: Maven Dependency Analyzer version 1.5 Released"
date: 2014-09-14 19:02
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Dependency Analyzer Version 1.5](http://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.5</version>
</plugin>
```

<!-- more -->

Bugs:

 * {% chjl MSHARED-285 %} - Port tests to JUnit 4.11
 * {% chjl MSHARED-307 %} - Performance: The implementation of DefaultClassAnalyzer unnecessarily scans jar files bodies
 * {% chjl MSHARED-323 %} - DefaultProjectDependencyAnalyzer does not correctly transform Files with Spaces to URLs
 * {% chjl MSHARED-327 %} - maven-dependency-analyzer not compatible with Java 8

Enjoy,

-The Maven team
Karl-Heinz Marbaise
