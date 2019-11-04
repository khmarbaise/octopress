---
layout: post
title: "Apache Maven Source Plugin Version 3.2.0 Released"
date: 2019-11-03 16:50:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, Version 3.2.0][home].

This plugin creates a jar archive of the source files of the current project.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>3.2.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

<!-- more -->

[Release Notes - Apache Maven Source Version 3.2.0][release]

Bug:

 * [MSOURCES-95](https://issues.apache.org/jira/browse/MSOURCES-95) - Source JAR is re-created even if sources are not changed

New Feature:

 * [MSOURCES-120](https://issues.apache.org/jira/browse/MSOURCES-120) - Reproducible Builds: make entries in output jar files reproducible (order + timestamp)

Read https://maven.apache.org/guides/mini/guide-reproducible-builds.html for more information on Reproducible Builds with Maven.

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-source-plugin/download.html
[home]: https://maven.apache.org/plugins/maven-source-plugin/
[release]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317924&version=12345522
