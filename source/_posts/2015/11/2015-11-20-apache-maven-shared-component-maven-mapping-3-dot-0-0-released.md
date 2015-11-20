---
layout: post
title: "Apache Maven Shared Component: Maven Mapping 3.0.0 Released"
date: 2015-11-20 17:40
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Mapping Version 3.0.0](http://maven.apache.org/shared/maven-mapping/).

The goal is to provide a shared component for all plugins that need to do
mapping.
 
Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-mapping</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:
 
http://maven.apache.org/shared/maven-mapping/download.cgi

<!-- more -->
 
[Release Notes Maven Mapping 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&amp;version=12333967)


Bug:

 * {% ajl MSHARED-368 %} -  Update plexus-interpolation to 1.21 to avoid potential thread safety issues

Improvement

 * {% ajl MSHARED-356 %} -  Upgrade to Maven 2.2.1 compatiblity
 * {% ajl MSHARED-357 %} -  Update version of plexus-interpolation to 1.19
 * {% ajl MSHARED-449 %} -  Upgrade to Maven 3.X only + JDK 6
 * {% ajl MSHARED-452 %} -  Removed calling to accessor
 * {% ajl MSHARED-453 %} -  Bump version to 3.0.0-SNAPSHOT
 * {% ajl MSHARED-457 %} -  Upgrade maven-shared-components parent to version 22
 
Enjoy,
 
-The Apache Maven team
