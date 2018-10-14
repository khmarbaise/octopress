---
layout: post
title: "Apache Maven Surefire Plugin Version 2.22.1 Released"
date: 2018-10-14 22:08:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 2.22.1](http://maven.apache.org/plugins/maven-surefire-plugin/).


The release contains 17 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes.
Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>2.22.1</version>
</plugin>
```

or for failsafe:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>2.22.1</version>
</plugin>
```

or for surefire-report:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>2.22.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Surefire - Version 2.22.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12343425)

Bugs:

 * {%ajl SUREFIRE-1532 %} - MIME type for javascript is now officially application/javascript
 * {%ajl SUREFIRE-1535 %} - Surefire unable to run testng suites in parallel
 * {%ajl SUREFIRE-1538 %} - Git considers PNG files as changed although there is no change
 * {%ajl SUREFIRE-1550 %} - The surefire XSD published on maven site lacks of some rerun element
 * {%ajl SUREFIRE-1559 %} - XML Report elements rerunError, rerunFailure, flakyFailure, flakyError should contain element stackTrace and should not be simpleContent.
 * {%ajl SUREFIRE-1561 %} - Logs in Parallel Tests are mixed up when forkMode=never or forkCount=0
 * {%ajl SUREFIRE-1564 %} - Can't override platform version through project/plugin dependencies
 * {%ajl SUREFIRE-1579 %} - Forks mixed up characters in standard output

Improvements:

 * {%ajl SUREFIRE-1552 %} - Nil element "failureMessage" in failsafe-summary.xml should have self closed tag
 * {%ajl SUREFIRE-1554 %} - Fix old test resources TEST-*.xml in favor of continuing with SUREFIRE-1550
 * {%ajl SUREFIRE-1555 %} - Elapsed time in XML Report should satisfy pattern in XSD.
 * {%ajl SUREFIRE-1562 %} - Support Java 11
 * {%ajl SUREFIRE-1565 %} - Surefire should support parameterized reportsDirectory

Tasks:

 * {%ajl SUREFIRE-1569 %} - m-invoker-p:3.1.0 attempts to reolve maven-surefire-common:jar:2.22.1-SNAPSHOT from remote repo 'apache.snapshots'
 * {%ajl SUREFIRE-1578 %} - Remove obsolete module surefire-setup-integration-tests

Dependency upgrades:

 * {%ajl SUREFIRE-1540 %} - Upgrade maven-plugins parent to version 32
 * {%ajl SUREFIRE-1571 %} - Upgrade maven-plugins parent to version 33

Enjoy,

-The Apache Maven team

