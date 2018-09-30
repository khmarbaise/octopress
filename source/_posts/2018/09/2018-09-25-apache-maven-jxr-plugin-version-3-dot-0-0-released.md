---
layout: post
title: "Apache Maven JXR Plugin Version 3.0.0 Released"
date: 2018-09-25 22:15:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JXR, version 3.0.0](https://maven.apache.org/jxr/maven-jxr-plugin/).

This module generates browsable HTML pages from Java source code.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
   <groupId>org.apache.maven.plugins</groupId>
   <artifactId>maven-jxr-plugin</artifactId>
   <version>3.0.0</version>
</plugin>
```

NOTE: Special thanks for the contributions retrieved during the hackathon at JCreate.

[Release Notes - Maven JXR - Version 3.0.0](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11085&version=19853)


Bugs:

 * {%ajl JXR-68 %} - ignores classes with same name in other packages
 * {%ajl JXR-98 %} - Nested classes aren't linked correctly
 * {%ajl JXR-100 %} - Method declaration: using spaces before or after parenthesis prevents cross references generation
 * {%ajl JXR-126 %} - File write using platform default encoding
 * {%ajl JXR-135 %} - Invalid representation of inner class
 * {%ajl JXR-140 %} - Proper URL handling

Improvements:

 * {%ajl JXR-110 %} - Use equivalent css/images of javadoc
 * {%ajl JXR-124 %} - Remove excluded DEPENDENCIES file if new parent is used.
 * {%ajl JXR-125 %} - Upgrade to Maven 3.0 compatibility
 * {%ajl JXR-127 %} - Create anchor for classes generated from a Java source file
 * {%ajl JXR-131 %} - Reports 'jxr' and 'test-jxr' do not contain generated sources.
 * {%ajl JXR-132 %} - Aggregator reports should not require modules to be installed/deployed.

Task:

 * {%ajl JXR-134 %} - switch to Git


Enjoy,

-The Apache Maven team 
