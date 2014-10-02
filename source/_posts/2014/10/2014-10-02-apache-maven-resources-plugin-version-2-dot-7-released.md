---
layout: post
title: "Apache Maven Resources Plugin Version 2.7 Released"
date: 2014-10-02 19:52
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resources Plugin, Version 2.7](http://maven.apache.org/plugins/maven-resources-plugin).

asdlfjadfkThe Javadoc Plugin uses the Javadoc tool to generate javadocs for the specified project.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-resources-plugin</artifactId>
  <version>2.7</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Resources Version 2.7]()

Bugs:

 * {% chjl MJAVADOC-406 %} - Regression: MJAVADOC-398 commit changed wrong line
 * {% chjl MJAVADOC-407 %} - Cannot parse annotations when generating javadoc
 * {% chjl MJAVADOC-416 %} - java.lang.ClassCastException: com.sun.tools.javadoc.ClassDocImpl cannot be cast to com.sun.javadoc.AnnotationTypeDoc

Improvement:

 * {% chjl MJAVADOC-412 %} - Update version of plexus-archiver to 2.5


Enjoy,

-The Apache Maven team
