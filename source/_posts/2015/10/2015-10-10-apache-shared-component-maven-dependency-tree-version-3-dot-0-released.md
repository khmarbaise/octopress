---
layout: post
title: "Apache Shared Component: Maven Dependency Tree Version 3.0 Released"
date: 2015-10-10 21:10
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Dependency Tree Version 3.0](http://maven.apache.org/shared/maven-dependency-tree/)


``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-tree</artifactId>
  <version>3.0</version>
</plugin>
```

<!-- more -->

[Release Notes Apache Shared Componet Maven Dependency Tree 3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331490)

Bug:

 * {% ajl MSHARED-422 %} Change DependencyGraphBuilder method signatures

Improvements:

 * {% ajl MSHARED-421 %} Change JDK + Maven requirements
 * {% ajl MSHARED-371 %} Increase chance of java8 compliance by updating to plexus-component-* 1.6

Enjoy,

-The Maven team

Karl-Heinz Marbaise
