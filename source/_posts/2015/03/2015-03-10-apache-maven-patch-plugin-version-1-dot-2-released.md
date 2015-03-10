---
layout: post
title: "Apache Maven Patch Plugin Version 1.2 Released"
date: 2015-03-10 11:04
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Patch Plugin, version 1.2](http://maven.apache.org/plugins/maven-patch-plugin/).

The Patch Plugin is used to apply patches to source files.


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-patch-plugin</artifactId>
  <version>1.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Patch Plugin - Version 1.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11714&version=16117):

Improvement:

 * {% chjl MPATCH-17 %} - Make Plugin only 2.2.1 compatible - get rid of Maven 2.0

New Feature:

 * {% chjl MPATCH-15 %} - Expose the "binary" option as a parameter

Task:

 * {% chjl MPATCH-14 %} - use maven-plugin-tools' java 5 annotations

Enjoy,

- The Apache Maven team
