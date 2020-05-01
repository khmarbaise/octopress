---
layout: post
title: "Apache Maven JDeps Plugin 3.1.1 Released"
date: 2018-02-28 23:15:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JDeps Plugin, version 3.1.1](https://maven.apache.org/plugins/maven-jdeps-plugin/).
 
The JDeps Plugin uses the jdeps tool to analyze classes for internal API calls.
For more information about the standard jdeps tool, please refer to
https://wiki.openjdk.java.net/display/JDK8/Java+Dependency+Analysis+Tool
 
You should specify the version in your project's plugin configuration:

```xml  
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jdeps-plugin</artifactId>
  <version>3.1.1</version>
</plugin>
```

[You can download the appropriate sources etc. from the download page.](https://maven.apache.org/plugins/maven-jdeps-plugin/download.cgi).

<!-- more -->

[Release Notes Maven JDeps Plugin Release Notes Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12319223&version=12341552&styleName=Text)

Bugs:

 * {%ajl MJDEPS-10 %} - Error: unknown option: -M while using module option of maven-jdeps-plugin

New Features:

 * {%ajl MJDEPS-9 %} - Introduce failOnWarning as a named property
 * {%ajl MJDEPS-11 %} - Introduce --multi-release option

Improvement:

 * {%ajl MJDEPS-12 %} - Add support for the '-package' options

Dependency upgrade:

 * {%ajl MJDEPS-8 %} - Upgrade plexus-utils to version 3.1.0
 * {%ajl MJDEPS-13 %} - Upgrade parent to 31

Enjoy,

-The Apache Maven team 
