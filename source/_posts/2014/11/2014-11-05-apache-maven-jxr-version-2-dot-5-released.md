---
layout: post
title: "Apache Maven JXR Version 2.5 Released"
date: 2014-11-05 22:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JXR, version 2.5](http://maven.apache.org/jxr/).

This module generates browsable HTML pages from Java source code.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
   <groupId>org.apache.maven.plugins</groupId>
   <artifactId>maven-jxr-plugin</artifactId>
   <version>2.5</version>
</plugin>
```

[Release Notes - Maven JXR - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11085&version=19853)

Bug:

 * {% chjl JXR-122 %} - apache-rat-plugin Configuration for DEPENDENCIES file.

Improvements:

 * {% chjl JXR-111 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl JXR-112 %} - Update version of plexus-utils to 3.0.20
 * {% chjl JXR-113 %} - Update maven-reporting-impl to 2.3
 * {% chjl JXR-114 %} - Remove deprecated marked entries in the code.
 * {% chjl JXR-115 %} - Fix WARNING for maven-surefire-plugin and duplicate test output..
 * {% chjl JXR-116 %} - Upgrade doxia from 1.2 to 1.4
 * {% chjl JXR-118 %} - Fixed Checkstyle reported errors/warnings
 * {% chjl JXR-119 %} - Upgrade org.apache.maven:maven-parent to version 25
 * {% chjl JXR-120 %} - Configure maven release plugin to autoVersionSubmodules
 * {% chjl JXR-121 %} - Release failed
 * {% chjl JXR-123 %} - Upgrade maven-plugin-annotations and maven-plugin-plugin from 3.2 to 3.3

Task:

 * {% chjl JXR-109 %} - use maven-plugin-tools' java 5 annotations

Enjoy,

-The Apache Maven team 
