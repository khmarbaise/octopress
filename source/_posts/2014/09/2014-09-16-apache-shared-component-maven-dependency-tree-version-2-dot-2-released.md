---
layout: post
title: "Apache Shared Component: Maven Dependency Tree Version 2.2 Released"
date: 2014-09-16 22:10
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Dependency Tree Version 2.2](http://maven.apache.org/shared/maven-dependency-tree/)


``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-dependency-tree</artifactId>
  <version>2.2</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=19225)

Bugs:

 * {% chjl MSHARED-326 %} - Patch that enables all maven-dependency-tree ITs
 * {% chjl MSHARED-336 %} - Create a method in the DependencyGraphBuilder that accepts the reactor projects to collect unbuilt dependencies

Improvement:

 * {% chjl MSHARED-349 %} - Upgrade maven version to 2.2.1


Enjoy,

-The Maven team
Karl-Heinz Marbaise
