---
layout: post
title: "Apache Shared Component: Maven Dependency Tree Version 3.0.1 Released"
date: 2017-05-11 21:10
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Dependency Tree Version 3.0.1](http://maven.apache.org/shared/maven-dependency-tree/)

A tree-based API for resolution of Maven project dependencies.

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-tree</artifactId>
  <version>3.0.1</version>
</plugin>
```

<!-- more -->

[Release Notes Apache Shared Componet Maven Dependency Tree 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12333851)

Bug:

 * {% ajl MSHARED-437 %} - - maven-dependency-tree removes optional flag from managed dependencies

Improvements:

 * {% ajl MSHARED-526 %} - - Upgrade maven-shared-components parent to version 30
 * {% ajl MSHARED-615 %} - - Change characters used to diplay trees to make relationships clearer
 

Enjoy,

-The Maven team

Karl-Heinz Marbaise
