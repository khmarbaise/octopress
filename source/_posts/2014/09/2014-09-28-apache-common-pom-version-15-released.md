---
layout: post
title: "Apache Common POM Version 15 Released"
date: 2014-09-28 13:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Apache-Common]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Common POM, version 15](http://maven.apache.org/pom/asf).

This POM (org.apache:apache) configures common Maven settings for
projects to use ASF infrastructure.

To use this parent, you should specify the version in your project's
plugin configuration:

``` xml
<parent>
  <groupId>org.apache</groupId>
  <artifactId>apache</artifactId>
  <version>15</version>
</parent>
```

Changes since previous release:

http://svn.apache.org/viewvc/maven/pom/tags/apache-15/pom.xml?view=markup

Enjoy,

-The Apache Maven team

