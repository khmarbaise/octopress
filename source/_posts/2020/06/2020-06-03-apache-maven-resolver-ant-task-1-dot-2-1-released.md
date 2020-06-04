---
layout: post
title: "Apache Maven Resolver Ant Task Version 1.2.1 Released"
date: 2020-06-03 14:31:23:02
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the [Maven 
Resolver Ant Tasks version 1.2.1](https://maven.apache.org/resolver-ant-tasks/).

The Maven Artifact Resolver Ant Tasks enable build scripts for Apache Ant 1.7+ to use Maven Artifact 
Resolver combined to Apache Maven Artifact Resolver Provider to resolve dependencies and install and 
deploy locally built artifacts.


You can download the appropriate sources etc. from 
the [download page](https://maven.apache.org/resolver-ant-tasks/download.cgi)

<!-- more -->

[Release Notes - Maven Resolver Ant Tasks version 1.2.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12348151)

* Bugs:

  * {%ajl MRESOLVER-100 %} - Resolver Ant Task taskdef failing

* Improvements:

  * {%ajl MRESOLVER-102 %} - make build Reproducible
  * {%ajl MRESOLVER-113 %} - Use a FileResource instead of PathElement for easier copy of path created by Resolve

* Dependency upgrades:

  * {%ajl MRESOLVER-110 %} - Upgrade to Maven 3.6.3
  * {%ajl MRESOLVER-111 %} - Upgrade to Maven Resolver from 1.3.3 to 1.4.2
  * {%ajl MRESOLVER-112 %} - Upgrade to Maven Antrun Plugin 3.0.0 



Enjoy,

-The Apache Maven team 