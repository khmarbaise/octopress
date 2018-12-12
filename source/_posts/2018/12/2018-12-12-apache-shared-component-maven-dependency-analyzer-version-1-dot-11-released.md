---
layout: post
title: "Apache Maven Shared Component: Maven Dependency Analyzer version 1.11.0 Released"
date: 2018-12-12 19:38:04
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Dependency Analyzer Version 1.11.0](http://maven.apache.org/shared/maven-dependency-analyzer/)

Analyzes the dependencies of a project for undeclared or unused artifacts.

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-analyzer</artifactId>
  <version>1.11.0</version>
</plugin>
```

<!-- more -->

[Release Notes](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12344434)

Improvements:

 * {%ajl MSHARED-770 %} - Upgrade org.ow2.asm:asm to 7.0
 * {%ajl MSHARED-780 %} - Add GitHub Informations.

Dependency upgrades:

 * {%ajl MSHARED-776 %} - Upgrade maven-shared-components to 33
 * {%ajl MSHARED-779 %} - Upgrade maven-invoker to 3.0.1

Enjoy,

-The Maven team

Karl-Heinz Marbaise
