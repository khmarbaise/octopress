---
layout: post
title: "Apache Maven WAR Plugin Version 3.0.0 Released"
date: 2016-08-28 13:00:10
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


<!-- more -->

[Release Notes - Maven WAR Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12331760)


Bugs:

 * {% ajl MWAR-367 %} - Overlay removes /META-INF/context.xml
 * {% ajl MWAR-369 %} - Upgrade to XStream 1.4.9
 * {% ajl MWAR-379 %} - manifest goal violates general Maven principle and creates file into src/main/..

Documentation:

 * {% ajl MWAR-346 %} - Fix broken links

Improvements:

 * {% ajl MWAR-225 %} - Add support for customizing filtering delimiters like the resources plugin
 * {% ajl MWAR-262 %} - <failOnMissingWebXml> default value should be false for Servlet level > 2.5 projects
 * {% ajl MWAR-326 %} - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * {% ajl MWAR-328 %} - Upgrade to Maven 3.0 compatiblity / JDK 6
 * {% ajl MWAR-347 %} - Upgrade plexus-io to 2.6
 * {% ajl MWAR-348 %} - Upgrade maven-invoker-plugin to 1.10
 * {% ajl MWAR-349 %} - Upgrade to fluido skin 1.4.0
 * {% ajl MWAR-361 %} - Removed unused dependencies in project
 * {% ajl MWAR-362 %} - Bump version to 3.0.0-SNAPSHOT
 * {% ajl MWAR-363 %} - Removed hard coded version for maven-invoker-plugin
 * {% ajl MWAR-364 %} - Upgrade plexus-utils to 3.0.22
 * {% ajl MWAR-365 %} - Upgrade plexus-archiver from 3.0.1 to 3.0.3
 * {% ajl MWAR-366 %} - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * {% ajl MWAR-370 %} - Upgrade plexus-archiver 3.0.3 to 3.1.1
 * {% ajl MWAR-372 %} - Upgrade maven-archiver to 3.0.1
 * {% ajl MWAR-373 %} - Make finalName readonly parameter
 * {% ajl MWAR-376 %} - Remove param properties that doesn't make sense for CLI usage
 * {% ajl MWAR-380 %} - Filtered resources folder should be changed
 * {% ajl MWAR-381 %} - Upgrade maven-archiver to 3.0.2
 * {% ajl MWAR-382 %} - Upgrade plexus-utils to 3.0.24
 * {% ajl MWAR-383 %} - Upgrade plexus-archiver to 3.2 / commons-io to 2.5
 * {% ajl MWAR-385 %} - Upgrade maven-plugins to version 30
 * {% ajl MWAR-387 %} - Upgrade of 'plexus-archiver' to version 3.3.
 * {% ajl MWAR-388 %} - Upgrade maven-archiver to 3.1.0
 * {% ajl MWAR-389 %} - Upgrade maven-filtering to 3.1.1

New Feature:

 * {% ajl MWAR-350 %} - Add Skip Parameter to Skip the process
Task
 * {% ajl MWAR-391 %} - Upgrade of plexus-archiver to 3.4.
 * {% ajl MWAR-392 %} - Upgrade of plexus-interpolation to 1.22.
 * {% ajl MWAR-393 %} - Upgrade of maven-archiver to 3.1.1.

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi

