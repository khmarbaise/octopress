---
layout: post
title: "Apache Maven Shared Invoker Version 3.0.0 Released"
date: 2017-01-27 17:15:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Maven Invoker, version 3.0.0](http://maven.apache.org/shared/maven-invoker/)

This API is concerned with firing a Maven build in a new JVM. It accomplishes
its task by building up a conventional Maven command line from options given in
the current request, along with those global options specified in the invoker
itself. Once it has the command line, the invoker will execute it, and capture
the resulting exit code or any exception thrown to signal a failure to execute.
Input/output control can be specified using an InputStream and up to two
InvocationOutputHandlers.

You can download the appropriate sources etc. from the 
[download page](http://maven.apache.org/shared/maven-invoker/download.cgi).


``` xml
<dependencies>
  <dependency>
    <groupId>org.apache.maven.shared</groupId>
    <artifactId>maven-invoker</artifactId>
    <version>3.0.0</version>
  </dependency>
</dependencies>
```

<!-- more -->

[Release Notes - Maven Shared Components - Version maven-invoker-3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331463)

Improvements:

 * {% ajl MSHARED-342 %} - Maven Invoker still using -r option when such is no longer supported
 * {% ajl MSHARED-459 %} - Remove deprecated parts from invoker interface
 * {% ajl MSHARED-460 %} - Upgrade maven-shared-components parent to version 22
 * {% ajl MSHARED-529 %} - Upgrade maven-shared-components parent to version 30
 * {% ajl MSHARED-568 %} - Using inherited site descriptor / Style
 * {% ajl MSHARED-569 %} - Upgrade plexus-utils to 3.0.24
 * {% ajl MSHARED-570 %} - Upgrade plexus-component-metadata plugin / plexus-component-annotations
 * {% ajl MSHARED-571 %} - Bump version to 3.0.0-SNAPSHOT
 * {% ajl MSHARED-572 %} - Drop Maven 2 Support


Enjoy,

-The Apache Maven team 
