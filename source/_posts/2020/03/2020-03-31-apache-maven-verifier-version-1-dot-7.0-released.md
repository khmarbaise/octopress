---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 1.7.0 Released"
date: 2020-03-31 18:40:53
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Verifier, version 1.7.0](https://maven.apache.org/shared/maven-verifier/).

This library provides a test harness for Maven integration tests.

You should specify the version in your project's dependency configuration:

``` xml
<dependency>
    <groupId>org.apache.maven.shared</groupId>
    <artifactId>maven-verifier</artifactId>
    <version>1.7.0</version>
</dependency>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
<!-- more -->

[Release Notes - Maven Verifier - Version 1.7.0][release-notes]

* Bugs:

  * {%ajl MSHARED-723 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
  * {%ajl MSHARED-769 %} - FileNotFoundException not thrown for unknown property file

* New Feature:

  * {%ajl MSHARED-855 %} - Support calling maven wrapper

* Improvements:

  * {%ajl MSHARED-547 %} - Support colorized output checks (ignore ANSI escape codes)
  * {%ajl MSHARED-768 %} - Require Java 7

* Dependency upgrades:

  * {%ajl MSHARED-689 %} - Upgrade parent to 31
  * {%ajl MSHARED-694 %} - Upgrade JUnit 3.8.2 to 4.12
  * {%ajl MSHARED-734 %} - Upgrade maven-shared-utils to 3.2.1
  * {%ajl MSHARED-751 %} - Upgrade maven-shared-components parent to version 32
 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-verifier/download.html
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12332949
