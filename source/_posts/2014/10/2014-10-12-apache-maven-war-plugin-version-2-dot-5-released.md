---
layout: post
title: "Apache Maven WAR Plugin Version 2.5 Released"
date: 2014-10-12 15:28
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 2.5](http://maven.apache.org/plugins/maven-war-plugin/)

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>2.5</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven WAR Plugin - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11150&version=19421)

Bugs:

 * {% chjl MWAR-305 %} - Filtering doesn't work as expected after switching from maven-filtering:1.0-beta-2 to maven-filtering:1.1
 * {% chjl MWAR-306] - [regression %} Filtering doesn't work if a lone @ is found in a line to interpolate
 * {% chjl MWAR-311 %} - Filtering of resources broken in version 2.4
 * {% chjl MWAR-312 %} - Document about Skinny War might need update

Improvements:

 * {% chjl MWAR-313 %} - Upgrade maven-filtering to 1.2
 * {% chjl MWAR-316 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MWAR-317 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MWAR-319 %} - Fix RAT Report
 * {% chjl MWAR-320 %} - Update version of plexus-archiver to 2.6.1
 * {% chjl MWAR-321 %} - Upgrade plexus archiver to 2.6.3
 * {% chjl MWAR-322 %} - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * {% chjl MWAR-323 %} - Upgrade xstream version to 1.4.4
 * {% chjl MWAR-324 %} - Upgrade plexus-io to 2.1.3
 * {% chjl MWAR-325 %} - Fixed CPD / Checkstyle WARNINGS

Task:

* {% chjl MWAR-302 %} - Use the maven-mapping shared component

Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
