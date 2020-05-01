---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 3.0.1 Released"
date: 2016-04-14 11:01:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.0.1](https://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.0.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
 
Important Notes since Version 3.0.0:

 * Maven 3.X only
 * JDK 6 minimum requirement

<!-- more -->

[Release Notes - Maven Archiver - Version 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12334036)

Bugs:

 * {% ajl MSHARED-154 %} -  pomPropertiesFile does not actually permit override
 * {% ajl MSHARED-191 %} -  Specification-Version must not contain "-SNAPSHOT"
 * {% ajl MSHARED-298 %} -  Errors in manifest example on site

Improvements:

 * {% ajl MSHARED-296 %} -  Improve header of pom.properties
 * {% ajl MSHARED-465 %} -  Remove @Deprecated marked code
 * {% ajl MSHARED-506 %} -  Upgrade plexus-archiver from 2.9.1 to 3.1.1
 * {% ajl MSHARED-511 %} -  Using structures to keep insertion order for MANIFEST.MF
 * {% ajl MSHARED-512 %} -  Remove @Deprecated marked code which has been missed.

Tasks:

 * {% ajl MSHARED-492 %} -  Upgrade parent to version 22
 * {% ajl MSHARED-493 %} -  Clean up warnings emitted by Javadoc 8 (doclint) and Checkstyle

Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
