---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 3.0.0 Released"
date: 2015-10-21 21:43:20
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.0.0](http://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.0.0</version>
</plugin>
```

Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

<!-- more -->

[Release Notes - Maven Archiver - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12333673)

Improvements:

 * {% ajl MSHARED-380 %} - Fix Checkstyle reported errors/warnings
 * {% ajl MSHARED-387 %} - Upgrade plexus-archiver from 2.8.1 to 2.9
 * {% ajl MSHARED-438 %} - Use Maven 3.0 Dependencies
 * {% ajl MSHARED-445 %} - Upgrade maven-shared-utils 3.0.0
 * {% ajl MSHARED-446 %} - Upgrade version to 3.0.0-SNAPSHOT
 * {% ajl MSHARED-447 %} - Use fluido skin 1.4

Enjoy,

-The Apache Maven team

