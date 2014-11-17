---
layout: post
title: "Apache Maven Plugins Parent POM Version 27 Released"
date: 2014-11-17 22:02
comments: true
categories: [Neuigkeiten,BM,Maven,POM-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugins Parent POM Version 27](http://maven.apache.org/pom/maven-plugins/).

This POM (org.apache.maven.plugins:maven-plugins) is the common parent of all
of the Maven plugins in the Apache Maven project.

To use this parent, you should specify the version in your project's
plugin configuration:

``` xml
<parent>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugins</artifactId>
  <version>27</version>
</parent>
```

Changes since previous release:

http://svn.apache.org/viewvc/maven/plugins/tags/maven-plugins-27/pom.xml?r1=HEAD&r2=1632929&diff_format=h

Enjoy,

-The Apache Maven team
