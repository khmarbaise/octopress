---
layout: post
title: "Apache Maven Remote Resources Plugin Version 1.6.0 Released"
date: 2018-11-01 13:45:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Remote Resources Plugin, version 1.6.0](https://maven.apache.org/plugins/maven-remote-resources-plugin/)


This plugin is used to retrieve JARs of resources from remote repositories,
process those resources, and incorporate them into JARs you build with Maven.

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-remote-resources-plugin</artifactId>
  <version>1.6.0</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-remote-resources-plugin/download.cgi)

<!-- more -->

[Release Notes - Apache Maven Remote Resources Plugin - Version 1.6.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317825&version=12331230&styleName=Text)

Bugs:

 * {%ajl MRRESOURCES-70 %} - SVN settings: eol-style and keywords
 * {%ajl MRRESOURCES-73 %} - remote resources depends on unavailable maven filtering verison
 * {%ajl MRRESOURCES-74 %} - maven remote resources plugin not compatible with Java 8
 * {%ajl MRRESOURCES-75 %} - Currently running -Prun-its clean verify - fails
 * {%ajl MRRESOURCES-76 %} - Updated plexus-interpolation to fix possible concurrency issues
 * {%ajl MRRESOURCES-91 %} - Avoid overwrite of the destination file if the produced contents is the same
 * {%ajl MRRESOURCES-94 %} - Performance issue in ProcessRemoteResourcesMojo.configureVelocityContext(...)
 * {%ajl MRRESOURCES-101 %} - NPE - Error rendering velocity resource

Improvements:

 * {%ajl MRRESOURCES-79 %} - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * {%ajl MRRESOURCES-84 %} - Print warning in case no encoding has been set.
 * {%ajl MRRESOURCES-86 %} - Remove unused dependency maven-monitor
 * {%ajl MRRESOURCES-88 %} - Added a note about .vm on the usage page
 * {%ajl MRRESOURCES-89 %} - Removed deprecated attributes
 * {%ajl MRRESOURCES-90 %} - Using project.isExecutionRoot() instead of the old way.

Wish:

 * {%ajl MRRESOURCES-111 %} - add INFO message on number of resources bundled/copied

Dependency upgrades:

 * {%ajl MRRESOURCES-77 %} - Upgrade maven-filtering to 1.3
 * {%ajl MRRESOURCES-78 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {%ajl MRRESOURCES-80 %} - Upgrade to maven-parent version 26
 * {%ajl MRRESOURCES-82 %} - Upgrade to maven-plugins parent version 27
 * {%ajl MRRESOURCES-87 %} - Upgrade JUnit from 3.8.1 to 4.11
 * {%ajl MRRESOURCES-95 %} - Upgrade plexus-resources from 1.0-alpha-7 to 1.0.1
 * {%ajl MRRESOURCES-97 %} - Upgrade mavenplugins parent to version 30
 * {%ajl MRRESOURCES-99 %} - Upgrade of plexus-interpolation to 1.24.
 * {%ajl MRRESOURCES-100 %} - Upgrade maven-filtering to 3.1.1
 * {%ajl MRRESOURCES-103 %} - Upgrade parent to 32
 * {%ajl MRRESOURCES-104 %} - Upgrade parent to 31
 * {%ajl MRRESOURCES-107 %} - Upgrade JUnit from 4.11 to 4.12
 * {%ajl MRRESOURCES-108 %} - Upgrade plexus-interpolation to 1.25
 * {%ajl MRRESOURCES-109 %} - Upgrade plexus-utils from 3.0.24 to 3.1.0
 * {%ajl MRRESOURCES-110 %} - Upgrade parent to version 33

Enjoy,

-The Apache Maven team

