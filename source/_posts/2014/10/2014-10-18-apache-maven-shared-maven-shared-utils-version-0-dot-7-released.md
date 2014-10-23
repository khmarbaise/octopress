---
layout: post
title: "Apache Maven Shared Component - Maven Shared Utils Version 0.7 Released"
date: 2014-10-18 14:27
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Utils Version 0.7](http://maven.apache.org/shared/maven-shared-utils/)

This project aims to be a functional replacement for plexus-utils in Maven. It
is not a 100% API compatible replacement though but a replacement with
improvements: lots of methods got cleaned up, generics got added and we dropped
a lot of unused code.

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>0.7</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?version=20184&styleName=Text&projectId=11761)

Bugs:

 * [MSHARED-242] - [shared-utils] improve shared utils featuers and introduce generics where possible
 * [MSHARED-313] - port dotted expression parser fixes from plexus-utils

Improvement:

 * [MSHARED-364] - Use NIO Delete when possibly in deleteFiles

New Feature:

 * [MSHARED-330] - add StringUtils.endsWithIgnoreCase()

Wish:

 * [MSHARED-257] - extract merge feature from Xpp3Dom

Enjoy,

-The Maven team
