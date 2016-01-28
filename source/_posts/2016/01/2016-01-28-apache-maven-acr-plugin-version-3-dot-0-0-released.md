---
layout: post
title: "Apache Maven ACR Plugin Version 3.0.0 Released"
date: 2016-01-28 16:55:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven ACR Plugin, Version 3.0.0](http://maven.apache.org/plugins/maven-acr-plugin).

This plugin generates J2EE Application Client file.

Important Note: This is a Maven 3.X only plugin and needs JDK 6 to run.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-acr-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven ACR Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317020&amp;version=12330202)

Improvements:

 * {% ajl MACR-12 %} -  Update version of plexus-archiver to 2.5
 * {% ajl MACR-13 %} -  Update version of plexus-archiver to 2.7.1
 * {% ajl MACR-14 %} -  Upgrade plexus-interpolation to 1.21
 * {% ajl MACR-15 %} -  Upgrade maven-filtering to 1.3
 * {% ajl MACR-16 %} -  Upgrade maven-archiver to 2.6
 * {% ajl MACR-17 %} -  Upgrade plexus-archiver 2.7.1 to 2.8.2
 * {% ajl MACR-18 %} -  Upgrade to maven-plugins version 25 to 26
 * {% ajl MACR-19 %} -  Upgrade to maven-plugins parent version 27
 * {% ajl MACR-20 %} -  Upgrade maven-plugin-testing-harness to 1.3
 * {% ajl MACR-21 %} -  Upgrade from plexus-archiver 2.4.4 to 2.9
 * {% ajl MACR-22 %} -  Remove unnecessary exclusions of org.codehaus.plexus:plexus-component-api
 * {% ajl MACR-23 %} -  Upgrade Maven 3.X Only JDK 1.6
 * {% ajl MACR-24 %} -  Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * {% ajl MACR-25 %} -  Rename properties according to the plugin name
 * {% ajl MACR-26 %} -  Update lifecycle mapping to newest plugin version.
 * {% ajl MACR-27 %} -  Bump version to 3.0.0-SNAPSHOT
 
Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
