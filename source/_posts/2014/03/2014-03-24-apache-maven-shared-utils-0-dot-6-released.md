---
layout: post
title: "Apache Maven Shared Utils 0.6 - Released"
date: 2014-03-24 09:02
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[maven-shared-utils, version 0.6](http://maven.apache.org/shared/maven-shared-utils/)

This project aims to be a functional replacement for
[plexus-utils](http://plexus.codehaus.org/plexus-utils) in Maven.

It is not a 100% API compatible replacement though but a replacement
*with improvements:*
lots of methods got cleaned up, generics got added and we dropped a
lot of unused code. Although all
the classes are in different packages from plexus-utils, if the method
is present it will have the same
semantics, facilitating easy conversion.

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>0.6</version>
</dependency>
``` 

<!-- more -->

Release Notes - Maven Shared Components - Version maven-shared-utils-0.6

Improvement:

 * {% chjl MSHARED-320 %} - Be able to mask some arguments in the commandLine API

Enjoy,

-The Apache Maven team
