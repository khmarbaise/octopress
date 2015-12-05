---
layout: post
title: "Apache Maven Shared Dependency Analyzer Version 1.6 Released"
date: 2015-01-21 21:09
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Dependency Analyzer Version 1.6](http://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

You should specify the version in your project's dependency list:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.6</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Dependency Analzyer Version 1.6](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331495).


Bugs:

 * {% ajl MSHARED-361 %} - DefaultProjectDependencyAnalyzer.buildArtifactClassMap assumes dependencies are jar files (regression)
 * {% ajl MSHARED-382 %} - JarFile object is not being closed

Improvement:

 * {% ajl MSHARED-371 %} - Increase chance of java8 compliance by updating to plexus-component-* 1.6


Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
