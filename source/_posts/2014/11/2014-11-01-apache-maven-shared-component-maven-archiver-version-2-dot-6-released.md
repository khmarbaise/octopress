---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 2.6 Released"
date: 2014-11-01 13:44
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 2.6](http://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. 

You should specify the version in your project's dependency configuration:

``` xml
<dependency>
  <groupId>org.apache.maven</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>2.6</version>
</dependency>
```

[Release Notes - Maven Archiver - Version 2.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=18325)

Bugs:

 * {% chjl MSHARED-241 %} - Use last plexus-archiver version
 * {% chjl MSHARED-360 %} - Upgrade plexus-archiver to 2.6.1 (was 2.6) and plexus-utils to 3.0.18 for java7+ symlink support
 * {% chjl MSHARED-368 %} - Update plexus-interpolation to 1.21 to avoid potential thread safety issues

Improvements:

 * {% chjl MSHARED-224 %} - Add documentation on the useUniqueVersions to the index page
 * {% chjl MSHARED-270 %} - Add Implementation-URL to DefaultImplementationEntries
 * {% chjl MSHARED-273 %} - Update documentation for the "Created-By" manifest entry
 * {% chjl MSHARED-363 %} - Update version of plexus-archiver to 2.7

Tasks:

 * {% chjl MSHARED-373 %} - Upgrade Maven baseline to 2.2.1
 * {% chjl MSHARED-374 %} - Upgrade Plexus Archiver to 2.8.1
 * {% chjl MSHARED-375 %} - Upgrade Plexus Utils to 3.0.20
 * {% chjl MSHARED-376 %} - Upgrade Maven Shared Utils to 0.7

Enjoy,

-The Apache Maven team

