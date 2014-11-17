---
layout: post
title: "Apache Maven Project Parent Version 26 Released"
date: 2014-11-17 21:17
comments: true
categories: [Neuigkeiten,BM,Maven,POM-Releases]
---
The Apache Maven team is pleased to announce the release of the
[Apache Maven Project Parent, version 26](http://maven.apache.org/pom/maven/).

This POM (org.apache.maven:maven-parent) contains settings that are likely to
be useful to any Maven project that is building and releasing code with Maven
2/3.

To use this parent, you should specify the version in your project's
plugin configuration:

``` xml
<parent>
  <groupId>org.apache.maven</groupId>
  <artifactId>maven-parent</artifactId>
  <version>26</version>
</parent>
```

The Changes since previous release can be view by the following link:

http://svn.apache.org/viewvc/maven/pom/tags/maven-parent-26/pom.xml?r1=HEAD&r2=1632922&diff_format=h

Enjoy,

-The Apache Maven team
