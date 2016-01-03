---
layout: post
title: "Apache Maven Surefire Plugin Version 2.19.1 Released"
date: 2016-01-03 20:45:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.19.1](http://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains a number of bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.

Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.19.1</version>
</plugin>
```

or for failsafe:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.19.1</version>
</plugin>
```

or for surefire-report:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.19.1</version>
</plugin>
```


<!-- more -->

[Release Notes - Maven Surefire - Version 2.19.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&amp;version=12333959)

Bugs:

 * {% ajl SUREFIRE-1185 %} -  single method test spews status of every single other test
 * {% ajl SUREFIRE-1187 %} -  JUnit4 Provider created unnecessary Runner instance
 * {% ajl SUREFIRE-1189 %} -  Prevent from I/O leakage. Thus close streams in finally block.
 * {% ajl SUREFIRE-1192 %} -  Fixed Sonar and FindBug issues
 * {% ajl SUREFIRE-1193 %} -  Surefire 2.19 hangs in the log4j build
 * {% ajl SUREFIRE-1194 %} -  reporter argument does not work for TestNG
 * {% ajl SUREFIRE-1197 %} -  Surefire 2.19 breaks tests under Windows due to fork problem
 * {% ajl SUREFIRE-1200 %} -  Could not run single test by full name
 * {% ajl SUREFIRE-1203 %} -  Surefire hangs after Test Execution
 * {% ajl SUREFIRE-1204 %} -  -Dtest= option is broken in 2.19
 * {% ajl SUREFIRE-1208 %} -  Start stream capture before loading tests
 * {% ajl SUREFIRE-1209 %} -  rerunFailingTestsCount does not run failed tests if forkCount and surefire-junit47 is used
 * {% ajl SUREFIRE-1211 %} -  surefire-testng runs JUnit tests
 * {% ajl SUREFIRE-1215 %} -  refs/tags/surefire-2.19.1_vote-1 slows down the Maven build in 20 seconds

Improvements:

 * {% ajl SUREFIRE-1135 %} -  Improve ignore message for TestNG
 * {% ajl SUREFIRE-1191 %} -  Run Single Test with Package Name Doesn't work
 * {% ajl SUREFIRE-1202 %} -  Allow rerunFailingTestsCount, skipAfterFailureCount together

Enjoy,

-The Apache Maven team

