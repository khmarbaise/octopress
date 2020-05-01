---
layout: post
title: "Apache Maven Shade Plugin Version 3.2.2 Released"
date: 2020-02-13 22:35:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shade Plugin, version 3.2.2](https://maven.apache.org/plugins/maven-shade-plugin/).

This plugin provides the capability to package the artifact in an uber-jar,
including its dependencies and to shade - i.e. rename - the packages of some of
the dependencies.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-shade-plugin</artifactId>
  <version>3.2.2</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven Shade Plugin - Version 3.2.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12344059)

* Bugs:

    * {%ajl MSHADE-223 %} - Endless processing when promoteTransitiveDependencies=true
    * {%ajl MSHADE-284 %} - Shaded test JARs are always empty
    * {%ajl MSHADE-291 %} - shadedPattern applied multiples times when relocating the contents of META-INF/services files
    * {%ajl MSHADE-298 %} - Groovy extension module transformer looking in incorrect META-INF directory
    * {%ajl MSHADE-309 %} - issue tracker link on the web site of shade plugin does not work.
    * {%ajl MSHADE-311 %} - Bad exclusions in dependency-reduced-pom.xml
    * {%ajl MSHADE-315 %} - Broken link on Maven Shade Plugin
    * {%ajl MSHADE-318 %} - Specifically included class's dependencies are missing
    * {%ajl MSHADE-331 %} - Issue Tracker link is not working - Page Not Found
    * {%ajl MSHADE-337 %} - Relocation cannot process class file version 58 JARs
    * {%ajl MSHADE-339 %} - Shaded test jar has wrong type "jar"
    * {%ajl MSHADE-340 %} - Shaded test jar artifact is not attached

* New Features:

    * {%ajl MSHADE-306 %} - Log all duplicates, not only classes
    * {%ajl MSHADE-347 %} - Reproducible Builds: make entries in output jar files reproducible

* Improvements:

    * {%ajl MSHADE-285 %} - It should be possible to shade test sources as a JAR
    * {%ajl MSHADE-313 %} - Minimize jar should respect implementations under /META-INF/services/
    * {%ajl MSHADE-316 %} - Minijar: <excludeDefaults>true</excludeDefaults>
    * {%ajl MSHADE-319 %} - Group output into included and excluded artifacts to easily identify them
    * {%ajl MSHADE-348 %} - Make build Reproducible

* Test:

    * {%ajl MSHADE-327 %} - improved integration test coverage for relocation and minification

* Tasks:

    * {%ajl MSHADE-322 %} - Provide a transformer for properties files
    * {%ajl MSHADE-330 %} - Java 12 and 13 support
    * {%ajl MSHADE-346 %} - Introduce mock repository manager for testing
    * {%ajl MSHADE-350 %} - Enable ManifestResourceTransformer to rewrite the manifest with relocations

* Dependency upgrades:

    * {%ajl MSHADE-320 %} - Upgrade maven-artifact-transfer to 0.11.0
    * {%ajl MSHADE-338 %} - Upgrade maven-artifact-transfer 0.12.0
    * {%ajl MSHADE-341 %} - Upgrade plexus-utils 3.3.0
    * {%ajl MSHADE-349 %} - Upgrade to org.ow2.asm:asm:7.3.1


Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
