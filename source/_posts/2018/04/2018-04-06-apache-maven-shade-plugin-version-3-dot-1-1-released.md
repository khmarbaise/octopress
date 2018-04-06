---
layout: post
title: "Apache Maven Shade Plugin Version 3.1.1 Released"
date: 2018-04-06 18:23:53
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.1.1](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.1.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-shade-plugin/download.cgi).


<!-- more -->

You can download the [appropriate sources etc. from the download page](http://maven.apache.org/plugins/maven-shade-plugin/download.cgi).
 
[Release Notes - Maven Shade Plugin - Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12341390)

Bugs:

 * {%ajl MSHADE-273 %} - Shading of paths starting with / ignores excludes
 * {%ajl MSHADE-275 %} - Maven Shade Plugin does not work under Java 10

Improvements:

 * {%ajl MSHADE-277 %} - Identify issue related IT failure mini-jar-malformed-dependencies/pom.xml
 * {%ajl MSHADE-278 %} - Print out the jar responsible for exceptions like "Error creating shaded jar: invalid LOC header (bad signature)"
 * {%ajl MSHADE-283 %} - Add documentation information for GitHub

Dependency upgrades:

 * {%ajl MSHADE-276 %} - Upgrade parent to 31
 * {%ajl MSHADE-279 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {%ajl MSHADE-280 %} - Upgrade jdom 1.1.3 to jdom2 2.0.6
 * {%ajl MSHADE-281 %} - Upgrade plexus-utils 3.1.0
 * {%ajl MSHADE-282 %} - Remove not used directories rel-path-test-files

Many thanks to all reporters/contributors/testers of this release.

Reporters:

 * MSHADE-273: Eugene Kirpichov
 * MSHADE-275: Markus Grech
 * MSHADE-278: Gary Gregory


Testers:

 * Markus Grech
 * Rafael Winterhalter


Enjoy,

-The Apache Maven team

