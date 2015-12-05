---
layout: post
title: "Apache Maven WAR Plugin Version 2.6 Released"
date: 2015-01-12 20:55
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 2.6](http://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>2.6</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven WAR Plugin - Version 2.6](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12331757)

Bugs:

 * {% ajl MWAR-167 %} - Final manifest not written to exploded location
 * {% ajl MWAR-309 %} - 'mvn package' duplicates WEB-INF/classes on linux only
 * {% ajl MWAR-331 %} - IOException: Mark invalid -- With version 2.5
 * {% ajl MWAR-333 %} - Fix thread safety issues by upgrading plexus-interpolation to 1.21
 * {% ajl MWAR-341 %} - Overlay task fails on unpacking when applying file permissions

Improvements:

 * {% ajl MWAR-329 %} - Update version of plexus-archiver to 2.7.1
 * {% ajl MWAR-330 %} - Update version plexus-io 2.2
 * {% ajl MWAR-334 %} - Upgrade maven-filtering to 1.3
 * {% ajl MWAR-335 %} - Upgrade maven-archiver dependency to v2.6
 * {% ajl MWAR-336 %} - Upgrade to maven-plugins version 25 to 26
 * {% ajl MWAR-338 %} - Upgrade to maven-plugins parent version 27
 * {% ajl MWAR-339 %} - Upgrade plexus-archiver to 2.9

Enjoy,

-The Apache Maven team

