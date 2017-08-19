---
layout: post
title: "Apache Maven EJB Plugin Version 3.0.0 Released"
date: 2017-08-19 12:15:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EJB Plugin Version 3.0.0](http://maven.apache.org/plugins/maven-ejb-plugin/).

This plugin generates J2EE Enterprise Javabean (EJB) file as well as the
associated client jar.

Important Note since 3.0.0:

 * Maven 3.X only
 * JDK 7 minimum requirement

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ejb-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven EJB Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317421&version=12330676)

Bugs:

 * {% ajl MEJB-109 %} - JDK 9 - EA compatibility Issue

Improvements:

 * {% ajl MEJB-72 %} - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * {% ajl MEJB-81 %} - Upgrade to Maven 3.X only compatiblity
 * {% ajl MEJB-86 %} - Make naming of properties consistent
 * {% ajl MEJB-87 %} - Upgrade EJB Version default to 3.1 in accordance with Java EE 6
 * {% ajl MEJB-88 %} - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * {% ajl MEJB-92 %} - Make separate classifier for client and main aritfact
 * {% ajl MEJB-93 %} - Prevent re-adding of main artifact twice
 * {% ajl MEJB-94 %} - Make integration tests more reliable
 * {% ajl MEJB-97 %} - Remove param properties that doesn't make sense for CLI usage
 * {% ajl MEJB-101 %} - Upgrade maven-shared-components parent to version 30
 * {% ajl MEJB-108 %} - Upgrade bound plugins to life cycle
 * {% ajl MEJB-113 %} - Move component.xml to correct location.

Dependency Upgrades:

 * {% ajl MEJB-114 %} - Upgrade plexus-utils to version 3.1.0
 * {% ajl MEJB-111 %} - Upgrade plexus-archiver to 3.5.
 * {% ajl MEJB-110 %} - Updated maven-archiver to 3.2.0
 * {% ajl MEJB-107 %} - Upgrade of plexus-interpolation to 1.24.
 * {% ajl MEJB-106 %} - Upgrade of maven-archiver to 3.1.1.
 * {% ajl MEJB-105 %} - Upgrade of maven-archiver to 3.1.0.
 * {% ajl MEJB-104 %} - Upgrade of maven-filtering to 3.1.1.
 * {% ajl MEJB-103 %} - Upgrade of plexus-interpolation to 1.22.
 * {% ajl MEJB-102 %} - Upgrade of plexus-archiver to 3.4.
 * {% ajl MEJB-100 %} - Upgrade plexus-archiver from 3.2 to 3.3
 * {% ajl MEJB-99 %} - Upgrade maven-filtering to 3.1.0
 * {% ajl MEJB-98 %} - Upgrade maven-archiver to 3.0.2
 * {% ajl MEJB-96 %} - Upgrade plexus-archiver to 3.1.1
 * {% ajl MEJB-95 %} - Upgrade plexus-archiver from 3.0.1 to 3.0.3
 * {% ajl MEJB-91 %} - Upgrade plexus-archiver from 2.10.2 to 3.0.1
 * {% ajl MEJB-90 %} - Upgrade commons-io to 2.4


Enjoy,

-The Apache Maven team
