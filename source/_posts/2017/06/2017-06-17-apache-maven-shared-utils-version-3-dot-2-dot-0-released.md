---
layout: post
title: "Apache Maven Shared Utils Version 3.2.0 Released"
date: 2017-06-17 23:10:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 3.2.0](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>3.2.0</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Shared Utils - Version 3.2.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12338026)

Bugs:

 * {% ajl MSHARED-574 %} - - UT failure on Windows: utils.io.Java7SupportTest createAndReadSymlink
 * {% ajl MSHARED-610 %} - - PrettyPrintXMLWriter internally uses java.io.PrintWriter without checking for any errors.
 * {% ajl MSHARED-617 %} - - StreamFeeder should flush OutputStream
 * {% ajl MSHARED-618 %} - - CommandLineCallable does not always call the 'runAfterProcessTermination' runnable.
 * {% ajl MSHARED-619 %} - - StreamFeeder silently ignores exceptions.
 * {% ajl MSHARED-622 %} - - CommandLineCallable silently ignores exceptions thrown from the stdin processor (StreemFeeder).
 * {% ajl MSHARED-630 %} - - Javadoc of several classes still references Maven 3.4.0 for color support

Improvements:

 * {% ajl MSHARED-587 %} - - remove logger level API from MessageBuilder
 * {% ajl MSHARED-620 %} - - CommandLineCallable should defer starting threads until called.
 * {% ajl MSHARED-621 %} - - CommandLineCallable should calculate process timeouts using 'System.nanoTime' instead of 'System.currentTimeMillis'.
 * {% ajl MSHARED-639 %} - - Removed prerequisites cause it is not a plugin

Task:

 * {% ajl MSHARED-623 %} - - Deprecation of methods 'close' and 'flush' of class 'StreamPumper'.


Enjoy,

-The Apache Maven team
