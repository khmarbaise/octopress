---
layout: post
title: "Apache Maven EJB Plugin Version 2.5 Released"
date: 2015-01-16 09:08
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EJB Plugin, version 2.5](http://maven.apache.org/plugins/maven-ejb-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ejb-plugin</artifactId>
  <version>2.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven EJB Plugin - Version 2.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317421&version=12330675)


Bugs:

 * {% ajl MEJB-63 %} - outputDirectory is treated differently to ear, war plugins
 * {% ajl MEJB-74 %} - Updated plexus-interpolation for thread safety

Improvements:

 * {% ajl MEJB-67 %} - Upgrade plexus-utils to 3.0.18
 * {% ajl MEJB-70 %} - Update version of plexus-archiver to 2.6.1
 * {% ajl MEJB-71 %} - Update version of plexus-archiver to 2.6.2
 * {% ajl MEJB-73 %} - Update version of plexus-archiver from 2.4.4 to 2.9
 * {% ajl MEJB-75 %} - Upgrade maven-filtering to 1.3
 * {% ajl MEJB-76 %} - Upgrade to maven-plugins parent version 27
 * {% ajl MEJB-77 %} - Upgrade maven-archiver to 2.6
 * {% ajl MEJB-78 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {% ajl MEJB-80 %} - Remove unnecessary exclusions of org.codehaus.plexus:plexus-component-api


Enjoy,

-The Apache Maven team

