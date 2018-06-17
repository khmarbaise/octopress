---
layout: post
title: "Apache Maven Surefire Plugin Version 2.22.0 Released"
date: 2018-03-06 19:30:23
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.22.0](http://maven.apache.org/plugins/maven-surefire-plugin/).


The release contains 33 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.
Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.22.0</version>
</plugin>
```

or for failsafe:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.22.0</version>
</plugin>
```

or for surefire-report:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.22.0</version>
</plugin>
```


<!-- more -->

[Release Notes - Maven Surefire - Version 2.22.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12343247)

Bugs:
 
 * [SUREFIRE-1383] - dependenciesToScan Does Not Leverage Classpath Elements
 * [SUREFIRE-1479] - SurefireBooterForkException: The forked VM terminated without properly saying goodbye since 2.20.1
 * [SUREFIRE-1498] - Surefire prints own logs "Couldn't load group class" to native stream.
 * [SUREFIRE-1503] - Forked JVM immediately crashed on Unix/Linux due to new shutdown mechanism does not turn to the old shutdown mechanism
 * [SUREFIRE-1506] - Sporadic NullPointerException in ConsoleOutputFileReporter#close()
 * [SUREFIRE-1512] - ProcessInfo for Windows is prone to timezone offset changes
 * [SUREFIRE-1515] - Standard output write fails for empty array
 * [SUREFIRE-1522] - IndexOutOfBoundsException for System.out.write

New Features:

 * [SUREFIRE-1330] - JUnit 5 surefire-provider code donation
 * [SUREFIRE-1495] - Encoding of TXT report file should be configured by ${project.reporting.outputEncoding} and MOJO parameter encoding

Improvement:

 * [SUREFIRE-1490] - Change header of the Failsafe Report

Tasks:

 * [SUREFIRE-1487] - ParallelComputerBuilderTest fails on overloaded system because internal delay are shorter than blocking time of JVM
 * [SUREFIRE-1504] - switch from Git-WIP to Gitbox
 * [SUREFIRE-1510] - Jenkins CI fails due to performance of Windows break concurrency of forked JVMs
 * [SUREFIRE-1518] - Upgrade version of plexus-java to 0.9.8



Enjoy,

-The Apache Maven team

