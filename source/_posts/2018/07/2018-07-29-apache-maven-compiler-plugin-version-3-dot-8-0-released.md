---
layout: post
title: "Apache Maven Compiler Plugin Version 3.8.0 Released"
date: 2018-07-29 22:45:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Compiler Plugin, version 3.8.0](http://maven.apache.org/plugins/maven-compiler-plugin/).

The Compiler Plugin is used to compile the sources of your project. 

Important Notes since Version 3.8.0

 * The default value for source/target has been lifted 
   from 1.5 to 1.6 see {%ajl MCOMPILER-335 %}.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-compiler-plugin</artifactId>
  <version>3.8.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Compiler Plugin - Version 3.8.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317225&version=12341563)


Bugs:

 * {%ajl MCOMPILER-311 %} - NPE when --patch-module is used
 * {%ajl MCOMPILER-321 %} - Problematic Java 9 modules are silently ignored
 * {%ajl MCOMPILER-332 %} - Java 10 not supported
 * {%ajl MCOMPILER-338 %} - Build Issue based on MCOMPILER-192 IT
 * {%ajl MCOMPILER-342 %} - Unsupported class file major version 55
 * {%ajl MCOMPILER-343 %} - Tests fail to compile in modularized project due to wrong module descriptor path being passed to plexus-java

Improvements:

 * {%ajl MCOMPILER-313 %} - Support mrjar dependency with module descriptor only in META-INF/versions/x
 * {%ajl MCOMPILER-323 %} - Support multi-release jars
 * {%ajl MCOMPILER-335 %} - Update default source/target from 1.5 to 1.6
 * {%ajl MCOMPILER-341 %} - Compile module-info.java files located in test sources

Tasks:

 * {%ajl MCOMPILER-336 %} - Dependency that should be on modulepath sometime put on classpath
 * {%ajl MCOMPILER-344 %} - Deprecate <optimize> flag
 * {%ajl MCOMPILER-350 %} - Add GitHub Documentation

Dependency upgrades:

 * {%ajl MCOMPILER-324 %} - Upgrade parent to 31
 * {%ajl MCOMPILER-351 %} - Upgrade maven-plugins parent to version 32
 * {%ajl MCOMPILER-352 %} - Upgrade maven-shared-utils to 3.2.1
 * {%ajl MCOMPILER-353 %} - Upgrade plexus-compiler to 2.8.4

Enjoy,

-The Apache Maven team
