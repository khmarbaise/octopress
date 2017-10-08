---
layout: post
title: "Apache Maven WAR Plugin Version 3.2.0 Released"
date: 2017-10-08 14:45:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.2.0](http://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.2.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


<!-- more -->

[Release Notes - Maven WAR Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12341372)


Bug:

 * {% ajl MWAR-407 %} - Binary files are modified during web.xml filtering; revert MWAR-404

Dependency upgrades:

 * {% ajl MWAR-409 %} - Upgrade maven-archiver to 3.2.0 / plexus-archiver 3.5
 * {% ajl MWAR-410 %} - Upgrade plexus-utils to version 3.1.0

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi

