---
layout: post
title: "Apache Maven Repository Plugin Version 2.4 Released"
date: 2015-02-22 15:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Repository Plugin, version 2.4](http://maven.apache.org/plugins/maven-repository-plugin/).

This plugin is used to create bundles of artifacts that can be uploaded to the
central repository.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-repository-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Repository Plugin - Version 2.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11250&version=16635)

Improvements:

 * {% chjl MREPOSITORY-27 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MREPOSITORY-28 %} - Update version of plexus-archiver to 2.5
 * {% chjl MREPOSITORY-29 %} - Added missing artifacts for integration tests
 * {% chjl MREPOSITORY-30 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MREPOSITORY-31 %} - Update version of plexus-archiver to 2.6.3
 * {% chjl MREPOSITORY-32 %} - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * {% chjl MREPOSITORY-33 %} - Improve stabebility of Integration tests
 * {% chjl MREPOSITORY-35 %} - Fix RAT Report
 * {% chjl MREPOSITORY-36 %} - Update version of plexus-archiver from 2.6.3 to 2.9
 * {% chjl MREPOSITORY-37 %} - Problem with integration tests (it-parent)

Task:

 * {% chjl MREPOSITORY-26 %} - use maven-plugin-tools' java 5 annotations


Enjoy,

-The Apache Maven team

