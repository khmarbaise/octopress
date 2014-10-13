---
layout: post
title: "Apache Maven Compiler Plugin Version 3.2 Released"
date: 2014-10-13 20:19
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.2](http://maven.apache.org/plugins/maven-compiler-plugin/)

The Compiler Plugin is used to compile the sources of your project. 

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11130&version=19091)

Bugs:

 * {% chjl MCOMPILER-157 %} - Maven Compiler Plugin should add to compileSourceRoots for next plugins to consider as source directory for generated files
 * {% chjl MCOMPILER-224 %} - Maven compiler plugin does not properly consume plexus compiler output

Improvements:

 * {% chjl MCOMPILER-159 %} - generatedSourcesDirectory should be included in list provided by org.apache.maven.project.MavenProject.getCompileClasspathElements()
 * {% chjl MCOMPILER-232 %} - Fix RAT Report

Task:

 * {% chjl MCOMPILER-220 %} - Fix o.a.m.p.c.CompilerMojoTestCase.testCompilerFork(), which fails when javac is not on the PATH


Enjoy,

-The Apache Maven team

