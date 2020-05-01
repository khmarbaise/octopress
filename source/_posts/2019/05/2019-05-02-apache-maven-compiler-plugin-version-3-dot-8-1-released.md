---
layout: post
title: "Apache Maven Compiler Plugin Version 3.8.1 Released"
date: 2019-05-02 22:47:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.8.1](https://maven.apache.org/plugins/maven-compiler-plugin/).

The Compiler Plugin is used to compile the sources of your project. 

Important Notes since Version 3.8.1

 * The default value for source/target has been lifted 
   from 1.5 to 1.6 see {%ajl MCOMPILER-335 %}.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.8.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.8.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317225&version=12343484)

Bugs:

 * {% ajl MCOMPILER-306 %} - Incorrect `compilerArgs` example usage
 * {% ajl MCOMPILER-349 %} - maven-compiler-plugin does not recompile a module if a dependency module has been updated & recompiled
 * {% ajl MCOMPILER-360 %} - NPE when calculating modulepath with invalid entries
 * {% ajl MCOMPILER-379 %} - Fatal error compiling: basedir ... arget/generated-sources/annotations does not exist

Improvements:

 * {% ajl MCOMPILER-322 %} - Set the JPMS module version
 * {% ajl MCOMPILER-366 %} - Warning about automodules should provide the list of offending libraries

Enjoy,
 
- The Apache Maven team
