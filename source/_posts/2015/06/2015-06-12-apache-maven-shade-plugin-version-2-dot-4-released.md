---
layout: post
title: "Apache Maven Shade Plugin Version 2.4 Released"
date: 2015-06-12 07:28
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 2.4](http://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shade Plugin - Version 2.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12331393)

Bugs:

 * {% ajl MSHADE-155 %} - dependency-reduced-pom should use shadedArtifactId
 * {% ajl MSHADE-169 %} - Typos in warning message
 * {% ajl MSHADE-172 %} - "java.lang.ArithmeticException: / by zero" in MinijarFilter
 * {% ajl MSHADE-174 %} - Unable to shade Java 8 jarfiles with static interface methods using minimizeJar
 * {% ajl MSHADE-183 %} - Getting "Error creating shaded jar: java.util.jar.Attributes cannot be cast to java.lang.String" error when using ManifestResourceTransformer with Maven 3.2.5
 * {% ajl MSHADE-185 %} - systemPath content is interpolated for system dependencies

Improvements:

 * {% ajl MSHADE-177 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% ajl MSHADE-178 %} - Removing plexus-container-default dependency
 * {% ajl MSHADE-179 %} - Fix RAT Report
 * {% ajl MSHADE-180 %} - Upgrade plexus-utils to 3.0.18
 * {% ajl MSHADE-188 %} - Upgrade maven-dependency-tree to 2.2
 * {% ajl MSHADE-191 %} - Upgrade plexus-utils to 3.0.22
 * {% ajl MSHADE-192 %} - Upgrade maven-invoker to 1.10
 * {% ajl MSHADE-193 %} - Upgrade to fluido skin 1.4.0


Enjoy,

-The Apache Maven team
