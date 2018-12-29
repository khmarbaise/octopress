---
layout: post
title: "Apache Maven Shared Component: Maven Dependency Analyzer version 1.11.1 Released"
date: 2018-12-25 17:15:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Dependency Analyzer Version 1.11.1](https://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.11.1</version>
</plugin>
```

<!-- more -->

[Release Notes](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12344667)

Bug:

 * {%ajl MSHARED-786 %} - jdk8 incompatibility at runtime (NoSuchMethodError)

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
