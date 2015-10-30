---
layout: post
title: "Apache Maven JDeps Plugin 3.0.0 Released"
date: 2015-10-30 18:57
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JDeps Plugin, version 3.0.0](http://maven.apache.org/plugins/maven-jdeps-plugin/).
 
The JDeps Plugin uses the jdeps tool to analyze classes for internal API 
calls. For more information about the standard jdeps tool, please refer to 
Java+Dependency+Analysis+Tool.
 
You should specify the version in your project's plugin configuration:

```xml  
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jdeps-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```
 
[You can download the appropriate sources etc. from the download page.](http://maven.apache.org/plugins/maven-jdeps-plugin/download.cgi).

This is the first release of this plugin.
 
Enjoy,
 
-The Apache Maven team


