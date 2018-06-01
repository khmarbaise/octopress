---
layout: post
title: "Apache Maven JavaDoc Plugin Version 3.0.1 Released"
date: 2018-05-28 22:45
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 3.0.1](http://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the
specified project. 


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>3.0.1</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-javadoc-plugin/download.cgi

<!-- more -->

[Release Notes - Apache Maven JavaDoc Plugin - Version 3.0.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317529&version=12331967)

Bugs:

 * {%ajl MJAVADOC-427 %} - "Error fetching URL" for valid non-Java API links
 * {%ajl MJAVADOC-504 %} - NullPointerException in JavadocUtil.getJavaHome() when JAVA_HOME isn't set
 * {%ajl MJAVADOC-512 %} - Even when <javadocVersion>1.8.0</javadocVersion> matches there still is a warning.
 * {%ajl MJAVADOC-517 %} - NPE under Java 10 RC

Improvements:

 * {%ajl MJAVADOC-487 %} - Follow redirects
 * {%ajl MJAVADOC-508 %} - Option to fail in case of javadoc warning

Dependency upgrades:

 * {%ajl MJAVADOC-515 %} - Upgrade parent to 31
 * {%ajl MJAVADOC-520 %} - Upgrade plexus-utils/qdox/plexus-archiver/
 * {%ajl MJAVADOC-521 %} - Add documentation information for GitHub


Enjoy,

-The Apache Maven team 
