---
layout: post
title: "Apache Maven Shared Component: Maven Shared IO 3.0.0 Released"
date: 2015-12-02 08:00:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Shared IO Version 3.0.0](http://maven.apache.org/shared/maven-shared-io/).

API for I/O support like logging, download or file scanning.

Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-io</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](http://maven.apache.org/shared/maven-shared-io/download.cgi).

<!-- more -->
 
[Release Notes Maven Shared IO 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12334278
)

Improvements:

 * {% ajl MSHARED-471 %} - Upgrade maven-shared-components parent to version 22
 * {% ajl MSHARED-472 %} - Upgrade maven-shared-utils to 3.0.0
 * {% ajl MSHARED-473 %} - Upgrade Maven 3.X Only JDK 1.6
 * {% ajl MSHARED-476 %} - Removed the empty interface MultiChannelMessageHolder
 * {% ajl MSHARED-479 %} - Bump version to 3.0.0-SNAPSHOT
 
Enjoy,
 
-The Apache Maven team
