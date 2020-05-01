---
layout: post
title: "Apache Maven WAR Plugin Version 3.2.2 Released"
date: 2018-06-10 12:33:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.2.2](https://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.2.2</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


<!-- more -->


[Release Notes - Maven WAR Plugin - Version 3.2.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12343264)

Bug:

 * {%ajl MWAR-303 %} - filtering of ${project.developers[0].id} does not work

Dependency upgrade:

 * {%ajl MWAR-417 %} - Upgrade to plexus-interpolation to version 1.25

Many thanks to all reporters/contributors/testers of this release.

Voters:

 * Gabriel Belingueres 


Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi

