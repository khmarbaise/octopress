---
layout: post
title: "Apache Maven Shared Utils Version 3.0.1 Released"
date: 2016-06-03 11:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 3.0.1](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>3.0.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shared Utils - Version 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12335471)


Bug:

 * {% ajl MSHARED-475 %} - Not able to compile a module named as "RCS" and "SCCS"

Improvements:

 * {% ajl MSHARED-503 %} - Upgrade maven-shared-components parent to version 22
 * {% ajl MSHARED-504 %} - Remove System.gc() call
 * {% ajl MSHARED-534 %} - Upgrade com.google.code.findbugs:jsr305 to 3.0.0
 * {% ajl MSHARED-535 %} - Upgrade maven-shared-components parent to version 30
 * {% ajl MSHARED-536 %} - Removed unused plugin declaration for maven-assembly-plugin
 * {% ajl MSHARED-537 %} - Removing plugin declaration which is handled by the parent
 * {% ajl MSHARED-538 %} - Upgrade maven-fluido-skin to 1.5


Enjoy,

-The Apache Maven team
