---
layout: post
title: "Apache Maven Surefire Plugin 2.17 Released"
date: 2014-03-16 11:18
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.17](http://maven.apache.org/surefire/maven-surefire-plugin/)

This release comes with some smaller improvements and bug fixes for TestNG,
for the JUnit Parallel Computer, the removal of temporary files, and last
but not least it fixes a compatibility issue with JDK 8 - just in time for
the much anticipated GA this week.
Yet again we received some much appreciated contributions from the
community. Thank you and keep 'em coming!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.17</version>
</plugin>
``` 

[Release Notes - Maven Surefire - Version 2.17]()

Bugs:

 * {% chjl SUREFIRE-1031 %} - Temp files are not deleted properly
 * {% chjl SUREFIRE-1033 %} - Invalid XML on documentation page
 * {% chjl SUREFIRE-1038 %} - Regression: Method depends on nonexistent group
 * {% chjl SUREFIRE-1040 %} - Typo in documentation of IntegrationTestMojo#test
 * {% chjl SUREFIRE-1041 %} - JUnit47 provider: Exception in JUnit Runner can crash test run without visible stack trace
 * {% chjl SUREFIRE-1044 %} - Changed behaviour of TestNG test execution after implementing runOrder support
 * {% chjl SUREFIRE-1046 %} - Inproc test running does not work with java 8
 * {% chjl SUREFIRE-1051 %} - Surefire plugin creates files in /tmp and does not delete them on exit
 * {% chjl SUREFIRE-1055 %} - Parallel JUnit does not run all test methods with parallel=classesAndMethods perCoreThreadCount=false useUnlimitedThreads=true and threadCountMethods specified
 * {% chjl SUREFIRE-1056 %} - fractional forkCount does not work as intended on single core machines
 * {% chjl SUREFIRE-1063 %} - Typo in error message

Improvements:

 * {% chjl SUREFIRE-1030 %} - Remove nested exception wrappers
 * {% chjl SUREFIRE-1047 %} - Add @{...} property evaluation for the argLine
 * {% chjl SUREFIRE-1058 %} - TestSetFailedException trying to use maven-surefire-plugin + regular expressions for TestNG groups
 * {% chjl SUREFIRE-1062 %} - TestNG listeners on separate lines in pom.xml

Wishes:

 * {% chjl SUREFIRE-1025 %} - TestSetRunListener.testSetCompleted() should write files first before reporting the completion on console.


Enjoy,

-The Apache Maven team

