---
layout: post
title: "Apache Maven Shared Component - Maven Filtering Version 3.1.0 Released"
date: 2016-04-16 08:45:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Filtering Version 3.1.0](https://maven.apache.org/shared/maven-filtering/).

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
  <version>3.1.0</version>
</plugin>
```

[You can download the appropriate sources etc. from the download page](https://maven.apache.org/shared/maven-filtering/download.cgi).


<!-- more -->

[Release Notes - Maven Filtering - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12334170)


Improvements:

 * {% ajl MSHARED-495 %} -  Add convenience method to move code into Maven Filtering
 * {% ajl MSHARED-496 %} -  Change version from 3.0.1 to 3.1.0-SNAPSHOT to follow semver.
 * {% ajl MSHARED-497 %} -  Allow copying of defaultExcluded files like .gitignore etc. 

Enjoy,

-The Apache Maven team
