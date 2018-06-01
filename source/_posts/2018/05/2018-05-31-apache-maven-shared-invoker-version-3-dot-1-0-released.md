---
layout: post
title: "Apache Maven Shared Invoker Version 3.1.0 Released"
date: 2018-05-31 01:00:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Maven Invoker, version 3.1.0](http://maven.apache.org/shared/maven-invoker/)

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
    <version>3.1.0</version>
  </dependency>
</dependencies>
```

<!-- more -->

[Release Notes - Maven Shared Components - Version maven-invoker-3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?version=12339250&styleName=Text&projectId=12317922)

Improvement:

 * {%ajl MSHARED-702 %} - Remove hard coded versions for plexus-component-annotations/plexus-component-metadata

Tasks:

 * {%ajl MSHARED-625 %} - Refactored to use 'maven-shared-utils' instead of 'plexus-utils'.
 * {%ajl MSHARED-729 %} - Upgrade to JDK 7 minimum.

Dependency upgrades:

 * {%ajl MSHARED-700 %} - Upgrade parent to 31
 * {%ajl MSHARED-728 %} - Upgrade maven-shared-utils to 3.2.1

Enjoy,

-The Apache Maven team 
