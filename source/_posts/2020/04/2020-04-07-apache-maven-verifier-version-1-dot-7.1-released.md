---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 1.7.1 Released"
date: 2020-04-07 15:31:53
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Verifier, version 1.7.1](https://maven.apache.org/shared/maven-verifier/).

This library provides a test harness for Maven integration tests.

You should specify the version in your project's dependency configuration:

``` xml
<dependency>
    <groupId>org.apache.maven.shared</groupId>
    <artifactId>maven-verifier</artifactId>
    <version>1.7.1</version>
</dependency>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
<!-- more -->

[Release Notes - Maven Verifier - Version 1.7.1][release-notes]

* Bug:

    * {%ajl MSHARED-872 %} - Embedded3xLauncher cannot be initialized
 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-verifier/download.html
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12347880
