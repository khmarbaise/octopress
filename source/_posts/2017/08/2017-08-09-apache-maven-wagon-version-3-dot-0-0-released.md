---
layout: post
title: "Apache Maven Wagon Version 3.0.0 Released"
date: 2017-08-09 20:40:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.0.0](http://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Maven's
artifact and repository handling code.

[Release Notes - Maven Wagon - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12340347)

Bugs:

 * {% ajl WAGON-363 %} - wagon-ftp fails to create non-existing directory when path contains "/../"
 * {% ajl WAGON-490 %} - FTP over HTTP proxy wagon

Improvements:

 * {% ajl WAGON-488 %} - Upgrade WebDAV Wagon to a more recent HttpClient version (4.5.3)
 * {% ajl WAGON-489 %} - Java 7 required


Enjoy,

-The Apache Maven team

