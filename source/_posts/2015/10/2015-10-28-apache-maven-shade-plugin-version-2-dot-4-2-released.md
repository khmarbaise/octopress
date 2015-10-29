---
layout: post
title: "Apache Maven Shade Plugin Version 2.4.2 Released"
date: 2015-10-28 22:19:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 2.4.2](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>2.4.2</version>
</plugin>
```

<!-- more -->

You can download the [appropriate sources etc. from the download page](http://maven.apache.org/plugins/maven-shade-plugin/download.cgi).
 
[Release Notes - Maven Shade Plugin - Version 2.4.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12333008)

Bugs:

 * {% ajl MSHADE-172 %} -  "java.lang.ArithmeticException: / by zero" in MinijarFilter
 * {% ajl MSHADE-190 %} -  Shade does not relocate the contents of META-INF/services files
 * {% ajl MSHADE-209 %} -  [REGRESSION] "java.lang.ArithmeticException: / by zero" in MinijarFilter (reporter Jon McLean).

Improvements:

 * {% ajl MSHADE-205 %} -  Better use of ClazzpathUnit for improved jar minimization (contributation of Benoit Perrot).
 * {% ajl MSHADE-207 %} -  Replace wrong link to codehaus with correct location
 * {% ajl MSHADE-210 %} -  Upgrade maven-plugins parent to version 28.
 * {% ajl MSHADE-211 %} -  Keep Java 1.5


Enjoy,

-The Apache Maven team

Thanks to contributors and reporters.

