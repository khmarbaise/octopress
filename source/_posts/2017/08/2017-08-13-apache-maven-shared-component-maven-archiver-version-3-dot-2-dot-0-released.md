---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 3.2.0 Released"
date: 2017-08-13 12:15:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.2.0](https://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.2.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
 
Important Notes since Version 3.2.0:

 * Maven 3.X only
 * JDK 7 minimum requirement

<!-- more -->

[Release Notes - Maven Archiver - Version 3.2.0][release-notes]


Bug:

 * {% ajl MSHARED-601 %} - Update examples with "Archiver-Version" manifest entry

Improvements:

 * {% ajl MSHARED-578 %} - Upgrade maven-shared-utils to 3.1.0
 * {% ajl MSHARED-579 %} - Upgrade to plexus-archiver 3.4
 * {% ajl MSHARED-643 %} - Upgrade to maven-shared-utils 3.2.0
 * {% ajl MSHARED-644 %} - Removed prerequisites for none maven-plugin project
 * {% ajl MSHARED-653 %} - Upgrade to plexus-archiver 3.5

 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12336063
