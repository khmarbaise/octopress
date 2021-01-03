---
layout: post
title: "Apache Maven Wagon Version 3.4.1 Released"
date: 2020-05-22 21:13:25
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.4.1](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/wagon/download.cgi).

<!-- more -->

[Release Notes - Maven Wagon - Version 3.4.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12348210)

* Bugs:

  * {%ajl WAGON-591 %} - Transfer event is not restarted when request is redirected
  * {%ajl WAGON-592 %} - Wagon fails when compiled on Java 9+ and run on Java 8 due to JDK API breakage
  * {%ajl WAGON-594 %} - http.route.default-proxy config property never passes protocol and port of proxy server

* Improvements:

  * {%ajl WAGON-595 %} - Add configuration property 'http.protocol.handle-content-compression'
  * {%ajl WAGON-596 %} - Add configuration property 'http.protocol.handle-uri-normalization'

* Task:

  * {%ajl WAGON-593 %} - Remove non-existent cache header


Enjoy,

- The Apache Maven team

