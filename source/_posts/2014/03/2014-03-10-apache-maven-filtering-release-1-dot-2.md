---
layout: post
title: "Apache Maven Filtering - Release 1.2"
date: 2014-03-10 22:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of 
the [Apache Maven Filtering, version 1.2](http://maven.apache.org/shared/maven-filtering/)

These Plexus components have been built from the filtering process/code in Apache Maven Resources Plugin.
The goal is to provide a shared component for all plugins that need to filter resources.


You should add the following dependency to your project:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-filtering</artifactId>
  <version>1.2</version>
</dependency>
``` 

<!-- more -->

[Release Notes - Maven Shared Components - Version maven-filtering-1.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=18729&styleName=Html)

Bugs:

 * {% chjl MSHARED-161 %} - DefaultMavenFileFilter.getDefaultFilterWrappers loads filters from the current directory instead of using basedir
 * {% chjl MSHARED-198 %} - custom delimiters doesn't work as expected
 * {% chjl MSHARED-199 %} - Filtering doesn't work if 2 delimiters are used on the same line, the first one being left open
 * {% chjl MSHARED-319 %} - Filtering throws NPE when using JDK8


New Feature:

 * {% chjl MSHARED-220 %} - Apply filtering to filenames

Enjoy,

-The Apache Maven team

