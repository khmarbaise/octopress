---
layout: post
title: "Apache Maven EAR Plugin Version 3.0.1 Released"
date: 2018-05-13 12:05:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EAR Plugin, version 3.0.1](http://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates Java EE Enterprise Archive (EAR) file. It can also
generate the deployment descriptor file (e.g. application.xml).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>3.0.1</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/plugins/maven-ear-plugin/download.cgi).
 

<!-- more -->

[Release Notes - Maven EAR Plugin - Version 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317422&version=12342882)


Improvements:

 * {%ajl MEAR-265 %} - Add documentation information for GitHub
 * {%ajl MEAR-266 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0

Dependency upgrade:

 * {%ajl MEAR-268 %} - Upgrade plexus-archiver to 3.6.0

Enjoy,

-The Apache Maven team
