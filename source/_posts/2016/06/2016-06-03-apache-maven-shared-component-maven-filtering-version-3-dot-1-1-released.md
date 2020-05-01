---
layout: post
title: "Apache Maven Shared Component - Maven Filtering Version 3.1.1 Released"
date: 2016-06-03 22:10:23
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Filtering Version 3.1.1](https://maven.apache.org/shared/maven-filtering/).

The goal is to provide a shared component for all plugins that needs to filter
resources.

Important Note since Version 3.0.0:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-filtering</artifactId>
  <version>3.1.1</version>
</plugin>
```

[You can download the appropriate sources etc. from the download page](https://maven.apache.org/shared/maven-filtering/download.cgi).


<!-- more -->

[Release Notes - Maven Filtering - Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12335751)


Improvements:

 * {% ajl MSHARED-516 %} - Change info logging output to debug (ignoreDelta)
 * {% ajl MSHARED-517 %} - Refactor Code to remove usage of deprecated marked code.
 * {% ajl MSHARED-528 %} - Upgrade maven-shared-components parent to version 30
 * {% ajl MSHARED-532 %} - Upgrade plexus-utils to 3.0.24
 * {% ajl MSHARED-533 %} - Upgrade plexus-interpolation to 1.22
 * {% ajl MSHARED-543 %} - Change info logging output to debug

Enjoy,

-The Apache Maven team
