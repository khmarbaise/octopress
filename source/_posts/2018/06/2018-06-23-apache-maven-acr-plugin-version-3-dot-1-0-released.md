---
layout: post
title: "Apache Maven ACR Plugin Version 3.1.0 Released"
date: 2018-06-23 21:30:35
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven ACR Plugin, Version 3.1.0](https://maven.apache.org/plugins/maven-acr-plugin).

This plugin generates J2EE Application Client file.

Important Note: This is a Maven 3.X only plugin and needs JDK 7 to run.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-acr-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-acr-plugin/download.cgi).

<!-- more -->

[Release Notes - Apache Maven ACR Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317020&version=12334755)

 
Bugs:

 * {%ajl MACR-41 %} - Upgrade of plexus-interpolation 1.24 to correct escaping issue.
 * {%ajl MACR-44 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0

Improvement:

 * {%ajl MACR-30 %} - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin

Dependency upgrades:

 * {%ajl MACR-28 %} - Upgrade plexus-archiver from 3.0.1 to 3.0.3
 * {%ajl MACR-29 %} - Upgrade plexus-archiver from 3.0.3 to 3.1
 * {%ajl MACR-31 %} - Upgrade plexus-archiver from 3.1 to 3.1.1 / maven-archiver from 3.0.0 to 3.0.2
 * {%ajl MACR-32 %} - Dependency updates.
 * {%ajl MACR-33 %} - Upgrade to maven-plugins version 30
 * {%ajl MACR-34 %} - Upgrade of 'plexus-archiver' to version 3.3.
 * {%ajl MACR-35 %} - Upgrade maven-archiver to 3.1.0
 * {%ajl MACR-36 %} - Upgrade maven-filtering to 3.1.1
 * {%ajl MACR-37 %} - Upgrade plexus-interpolation to 1.22
 * {%ajl MACR-38 %} - Upgrade maven-archiver to 3.1.0
 * {%ajl MACR-39 %} - Upgrade of plexus-archiver to 3.4.
 * {%ajl MACR-40 %} - Upgrade of maven-archiver to 3.1.1.
 * {%ajl MACR-42 %} - Upgrade parent to 31
 * {%ajl MACR-43 %} - Upgrade plexus-utils 3.1.0 / maven-archiver / plexus-achiver
 * {%ajl MACR-45 %} - Upgrade plexus-archiver to 3.6.0
 * {%ajl MACR-46 %} - Upgrade plexus-interpolation to 1.25

Enjoy,

-The Apache Maven team
