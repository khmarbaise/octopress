---
layout: post
title: "Apache Maven Shared Component - Maven Filtering Version 1.3 Released"
date: 2014-10-19 17:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Filtering Version 1.3](http://maven.apache.org/shared/maven-filtering/).

The goal is to provide a shared component for all plugins that needs to filter
resources.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-filtering</artifactId>
  <version>1.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Filtering - Version 1.3)(http://jira.codehaus.org/secure/ReleaseNote.jspa?version=20184&styleName=Text&projectId=11761)

Bug:

 * [MSHARED-325] - maven-filtering 1.2 throws MavenFilteringException: Mark invalid

Improvements:

 * [MSHARED-351] - Update version of plexus-interpolation to 1.19
 * [MSHARED-352] - Update version of plexus-utils to 3.0.18
 * [MSHARED-353] - Upgrade maven-shared-utils to 0.6
 * [MSHARED-354] - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * [MSHARED-355] - Upgrade to Maven 2.2.1 compatiblity
 * [MSHARED-366] - Add ability to do Stream/Reader based filtering

Enjoy,

-The Apache Maven team
