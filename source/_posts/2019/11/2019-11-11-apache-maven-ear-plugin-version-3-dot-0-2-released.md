---
layout: post
title: "Apache Maven EAR Plugin Version 3.0.2 Released"
date: 2019-11-16 16:35:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EAR Plugin, version 3.0.2](https://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates Java EE Enterprise Archive (EAR) file. It can also
generate the deployment descriptor file (e.g. application.xml).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>3.0.2</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/plugins/maven-ear-plugin/download.cgi).
 

<!-- more -->

[Release Notes - Maven EAR Plugin - Version 3.0.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317422&version=12343262)

Bug:

 * {%ajl MEAR-273 %} - Adding extra slash causing issues on eclipse editors
 
Wish:

 * {%ajl MEAR-271 %} - Support lookup-name in resource-ref section
 
Dependency upgrades:

 * {%ajl MEAR-270 %} - Upgrade maven-plugins parent to version 32
 * {%ajl MEAR-274 %} - Upgrade plexus-interpolation to 1.25
 * {%ajl MEAR-275 %} - Upgrade plexus-archiver to 4.1.0
 * {%ajl MEAR-277 %} - Upgrade maven-invoker-plugin to 3.2.1

Enjoy,

-The Apache Maven team
