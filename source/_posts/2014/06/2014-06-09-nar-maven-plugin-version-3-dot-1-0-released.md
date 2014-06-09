---
layout: post
title: "Nar Maven Plugin Version 3.1.0 Released"
date: 2014-06-09 13:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
There is a new release of the [Nar Maven Plugin 3.1.0 Released](http://maven-nar.github.io/)

This plugin for Maven 2 allows you to compile native code (c++, c and fortran)
on a number of different architectures (Linux, Windows, MacOSX, Solaris, ...)
and with a number of different compilers/linkers (g++, Microsoft Visual C++,
CC, ...)

To use the plugin you need to give the following in your pom file:

``` xml
<plugin>
  <groupId>com.github.maven-nar</groupId>
  <artifactId>nar-maven-plugin</artifactId>
  <version>3.1.0</version>
  <extensions>true</extensions>
</plugin>
```

The [announcement has been done in the google groups](https://groups.google.com/forum/#!topic/maven-nar/aZrgbxHN9sY).
