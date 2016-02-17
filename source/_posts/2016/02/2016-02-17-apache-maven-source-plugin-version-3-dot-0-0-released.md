---
layout: post
title: "Apache Maven Source Plugin Version 3.0.0 Released"
date: 2016-02-17 19:49:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, Version 3.0.0][home].

The Source Plugin creates a jar archive of the source files of the current
project. The jar file is, by default, created in the project's target
directory.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

<!-- more -->

[Release Notes - Apache Maven Source Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317924&version=12331545)


Bug:

 * {% ajl MSOURCES-81 %} -  allow sources jar to contain Maven descriptor

Improvements:

 * {% ajl MSOURCES-75 %} -  Update version of plexus-archiver to 2.7
 * {% ajl MSOURCES-76 %} -  Upgrade from maven-plugins version 25 to 26
 * {% ajl MSOURCES-77 %} -  Upgrade maven-archiver from 2.5 to 2.6
 * {% ajl MSOURCES-78 %} -  Upgrade plexus-archiver 2.7 to 2.8.4
 * {% ajl MSOURCES-79 %} -  Upgrade to maven-plugins parent version 27
 * {% ajl MSOURCES-80 %} -  Upgrade plexus-archiver to 2.10.2
 * {% ajl MSOURCES-82 %} -  Make naming of properties consistent to the plugin name.
 * {% ajl MSOURCES-83 %} -  Make Plugin only Maven 3.0 minimum
 * {% ajl MSOURCES-84 %} -  Change package name from org.apache.maven.plugin to org.apache.maven.plugins
 * {% ajl MSOURCES-85 %} -  Upgrade plexus-archiver to 3.0.1
 * {% ajl MSOURCES-86 %} -  Upgrade maven-archiver to 3.0.0
 * {% ajl MSOURCES-88 %} -  Upgrade plexus-utils to 3.0.22
 * {% ajl MSOURCES-89 %} -  Using plugin parent version 28
 * {% ajl MSOURCES-90 %} -  Upgrade junit to 4.11
 * {% ajl MSOURCES-91 %} -  Added several properties for parameters
 * {% ajl MSOURCES-92 %} -  Generate Maven Descriptor by default
 * {% ajl MSOURCES-93 %} -  Upgrade plexus-archiver from 3.0.1 to 3.0.3


Enjoy,

-The Apache Maven team

Karl Heinz Marbaise

[download]: http://maven.apache.org/plugins/maven-source-plugin/download.html
[home]: http://maven.apache.org/plugins/maven-source-plugin/
