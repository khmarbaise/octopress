---
layout: post
title: "Apache Maven Compiler Plugin Version 3.3 Released"
date: 2015-03-26 20:48
comments: true
categories: 
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.3](http://maven.apache.org/plugins/maven-compiler-plugin/).

The Compiler Plugin is used to compile the sources of your project. 


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11130&version=20684)

Bug:

 * {% chjl MCOMPILER-223 %} - Move to a non-ancient maven-toolchain dependency

Improvements:

 * {% chjl MCOMPILER-237 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MCOMPILER-238 %} - Upgrade to maven-plugins parent version 27
 * {% chjl MCOMPILER-239 %} - Upgrade maven-shared-utils to 0.7
 * {% chjl MCOMPILER-241 %} - Upgrade plexus-compiler-api to 2.5

Enjoy,

-The Apache Maven team


