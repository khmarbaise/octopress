---
layout: post
title: "Apache Maven Surefire Plugin Version 2.21.0 Released"
date: 2018-03-06 19:30:23
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.21.0](http://maven.apache.org/plugins/maven-surefire-plugin/).


The release contains 33 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.
Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.21.0</version>
</plugin>
```

or for failsafe:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.21.0</version>
</plugin>
```

or for surefire-report:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.21.0</version>
</plugin>
```


<!-- more -->

[Release Notes - Maven Surefire - Version 2.21.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12341630)

Bugs:

 * {%ajl SUREFIRE-1372 %} - Rerunning failing tests fails in combination with Description#createSuiteDescription
 * {%ajl SUREFIRE-1422 %} - Forking fails on Linux if /bin/ps isn't available
 * {%ajl SUREFIRE-1424 %} - javax.transaction.TransactionManager not visible with Java9
 * {%ajl SUREFIRE-1439 %} - NullPointerException on JDK10
 * {%ajl SUREFIRE-1443 %} - surefire report: broken links with inner classes
 * {%ajl SUREFIRE-1445 %} - Properties from configuration POM are not passed to Provider on JDK 9
 * {%ajl SUREFIRE-1450 %} - TestNG Listener aren't working from Property Tag in POM.xml With JDK9
 * {%ajl SUREFIRE-1451 %} - Surefire Booter compatibility with NetBSD ps(1) output
 * {%ajl SUREFIRE-1452 %} - Support filtering of tests from Base Class (TestNG)
 * {%ajl SUREFIRE-1475 %} - PpidChecker.windows() assumes wmic is on the path

Improvements:

 * {%ajl SUREFIRE-1183 %} - Custom Test Report Titles and Descriptions
 * {%ajl SUREFIRE-1262 %} - Add modulepath support
 * {%ajl SUREFIRE-1416 %} - maven-surefire-parser: add new method isError in ReportTestCase
 * {%ajl SUREFIRE-1435 %} - Improve Thread Dump. Use prefix "surefire-forkedjvm" in daemon Threads in forked JVM
 * {%ajl SUREFIRE-1448 %} - Clarified specifying multiple categories for JUnit
 * {%ajl SUREFIRE-1453 %} - Allow to specify non existant classes as "groups"
 * {%ajl SUREFIRE-1454 %} - Speedup Standard Output if Tests
 * {%ajl SUREFIRE-1491 %} - LocationManager injected in MOJO unables plugin to run in JDK 1.6

Test:

 * {%ajl SUREFIRE-1437 %} - Improve unit tests. Call PID parser on all platforms in SystemUtilsTest.

Wish:

 * {%ajl SUREFIRE-1436 %} - Increase usability in quiet mode

Tasks:

 * {%ajl SUREFIRE-1455 %} - JaCoCo on integration tests
 * {%ajl SUREFIRE-1461 %} - UnicodeTestNamesIT should be able to run multiple times
 * {%ajl SUREFIRE-1463 %} - integration tests should run on the top of JDK 9
 * {%ajl SUREFIRE-1471 %} - Too long Windows path cause CI issues. Renamed surefire-intergation-tests to surefire-its.
 * {%ajl SUREFIRE-1472 %} - Multibranch Pipeline supports JDK 7-10 Maven 3.2-3.5 Linux Windows
 * {%ajl SUREFIRE-1481 %} - Surefire1295AttributeJvmCrashesToTestsIT should be Parameterized test instead of using Theories runner
 * {%ajl SUREFIRE-1482 %} - Obsolete workaround with commons-lang3 in project unit tests
 * {%ajl SUREFIRE-1484 %} - maven-clean-plugin should be used in integration test resource junit-pathWithUmlaut
 * {%ajl SUREFIRE-1485 %} - surefire-shadefire project should not be deployed in Maven Central
 * {%ajl SUREFIRE-1486 %} - maven-failsafe-plugin does not use JUnit adapter for JUnit4 annotations and TestNG providers do not have maven-surefire-plugin config in POM
 * {%ajl SUREFIRE-1488 %} - Native library in Surefire1295AttributeJvmCrashesToTestsIT caused unstable test
 * {%ajl SUREFIRE-1489 %} - Implement different HTTP ports in ITs and zip() in jenkinsfile

Dependency upgrade:

{%ajl SUREFIRE-1434 %} - Upgrade PowerMock@Java9 to Version 2.0.0-beta.5

Enjoy,

-The Apache Maven team

