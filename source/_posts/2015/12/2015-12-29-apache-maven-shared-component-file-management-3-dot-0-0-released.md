---
layout: post
title: "Apache Maven Shared Component: File Management 3.0.0 Released"
date: 2015-12-29 17:01:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: File Management Version 3.0.0](https://maven.apache.org/shared/file-management/).

The Maven File Management API provides an API to collect files from a given
directory using several include/exclude rules.
 
Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>file-management</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/shared/file-management/download.cgi).

<!-- more -->
 
[Release Notes File Management 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&amp;version=12331511
)

Bugs:

 * {% ajl MSHARED-92 %} -  Cannot retreive FileNameMapper with MapperUtil
 * {% ajl MSHARED-96 %} -  Sample code is not working

Improvements:

 * {% ajl MSHARED-265 %} -  add fileset XML descriptor documentation generated from model
 * {% ajl MSHARED-399 %} -  Upgrade to Maven 2.2.1 compatiblity
 * {% ajl MSHARED-400 %} -  Upgrade maven-shared-utils to 0.7
 * {% ajl MSHARED-401 %} -  Remove dependency plexus-container-default:1.0-alpha-9-stable-1
 * {% ajl MSHARED-462 %} -  Upgrade JUnit Test Cases to new style (JUnit 4.11)
 * {% ajl MSHARED-467 %} -  Upgrade Maven 3.X Only JDK 1.6
 * {% ajl MSHARED-474 %} -  Upgrade maven-shared-io to 3.0.0
 
Enjoy,
 
-The Apache Maven team
