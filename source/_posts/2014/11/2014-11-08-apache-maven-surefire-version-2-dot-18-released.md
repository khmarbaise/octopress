---
layout: post
title: "Apache Maven Surefire Version 2.18 Released"
date: 2014-11-08 13:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire/Failsafe Plugin, version 2.18](http://maven.apache.org/surefire/).

The release contains a number of bug fixes, and introduces an option to
automatically rerun failing tests, including proper reporting on the
console and in the XML reports for the individual runs.
Again we received some much appreciated contributions from the community in
form of bug reports, bug fixes and patches for new features. Thank you and
keep 'em coming!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.18</version>
</plugin>
```

or for failsafe:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.18</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Surefire - Version 2.18](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10541&version=20175)

Bugs:

 * {% chjl SUREFIRE-649 %} - Might be impossible to have empty strings in systemPropertyVariables element
 * {% chjl SUREFIRE-941 %} - TESTS header printed twice when forkMode is always
 * {% chjl SUREFIRE-963 %} - Unable to set empty environment variables
 * {% chjl SUREFIRE-1023 %} - Report generation fails with StringIndexOutOfBoundsException
 * {% chjl SUREFIRE-1028 %} - Unable to run single test (junit)
 * {% chjl SUREFIRE-1069 %} - Typo in alwaysGenerateSurefireReport doc: "Defaulyts"
 * {% chjl SUREFIRE-1072 %} - Duplicate example of commandline in run single test documentation
 * {% chjl SUREFIRE-1075 %} - Addresses to documented mailing lists in Maven site dead
 * {% chjl SUREFIRE-1077 %} - NPE problem will happen if you set testng status to fail at afterInvocation method
 * {% chjl SUREFIRE-1078 %} - Failure running forked mode with TestNG test suites defined via XML files
 * {% chjl SUREFIRE-1080 %} - Use parallel and fork together run some tests multiple times
 * {% chjl SUREFIRE-1081 %} - Doc claims parallel is TestNG only, but rest of doc implies junit works, too.
 * {% chjl SUREFIRE-1088 %} - When test fail during initialization the test execution time can result in a large negative number.
 * {% chjl SUREFIRE-1090 %} - NPE in SmartStacktraceParser if Thread.contextCassLoader is null
 * {% chjl SUREFIRE-1091 %} - IOException when test with much output prints in @After / @AfterClass - possible haning processes
 * {% chjl SUREFIRE-1092 %} - The shutdown hook of parallel computer randomly prints started tests after timeout overflow
 * {% chjl SUREFIRE-1095 %} - NPE in RunListener
 * {% chjl SUREFIRE-1096 %} - ClassCastException: Fork test for TestNG with xmlsuite
 * {% chjl SUREFIRE-1098 %} - runOrder=balanced is not working
 * {% chjl SUREFIRE-1099 %} - Invalid link ids in surefire-report
 * {% chjl SUREFIRE-1102 %} - The module surefire-setup-integration-tests fails with Maven 3.2.3
 * {% chjl SUREFIRE-1104 %} - Internal Maven Surefire IT tests fail with Maven 3.2.x

Improvements:

 * {% chjl SUREFIRE-1053 %} - Suppress warning message if file.encoding is set using argLine
 * {% chjl SUREFIRE-1097 %} - improve documentation includes/excludes
 * {% chjl SUREFIRE-1101 %} - Surefire does not shutdown thread-pools programatically after test run has finished.
 * {% chjl SUREFIRE-1105 %} - Surefire build should check Java 1.5 API signatures with JDK version > 5
 * {% chjl SUREFIRE-1106 %} - Update to minimum maven 2.2.1
 * {% chjl SUREFIRE-1108 %} - Surefire should print parallel tests in progress been stopped after elapsed timeout

New Features:

 * {% chjl SUREFIRE-654 %} - TestNG: Recognize successful tests when using invocationCount and successPercentage parameters on the @Test annotation
 * {% chjl SUREFIRE-1087 %} - New option rerunFailingTestsCount
 * {% chjl SUREFIRE-1093 %} - Exceptional parallel execution on @NotThreadSafe testcase or suite

Enjoy,

-The Apache Maven team

