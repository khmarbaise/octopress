---
layout: post
title: "Apache Maven Assembly Plugin Version 2.5.3 Released"
date: 2014-12-20 11:56
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the
[Apache Maven Assembly Plugin, version 2.5.3](http://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

This release is a bugfix release.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.5.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 2.5.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11126&version=20790)

Bugs:

 * {% chjl MASSEMBLY-648 %} - lineEnding in fileSet corrupts jar files
 * {% chjl MASSEMBLY-665 %} - OS dependent behaviour while packaging
 * {% chjl MASSEMBLY-735 %} - NullPointerException at org.apache.commons.compress.archivers.zip.FallbackZipEncoding.encode(FallbackZipEncoding.java:80)
 * {% chjl MASSEMBLY-739 %} - directory permissions are not 755 but 000 in zip
 * {% chjl MASSEMBLY-741 %} - wrong paths in file-modes tests
 * {% chjl MASSEMBLY-742 %} - Unclosed ZipFile warnings when ZIP archives are included
 * {% chjl MASSEMBLY-743 %} - <includeBaseDirectory> not correct

Improvements:

 * {% chjl MASSEMBLY-720 %} - Fixed Checkstyle reported errors / warnings
 * {% chjl MASSEMBLY-738 %} - Upgrade to plexus-archiver from 2.8.4 to 2.9.1 and plexus-io from 2.3.5 to 2.4.1


Enjoy,

-The Apache Maven team
