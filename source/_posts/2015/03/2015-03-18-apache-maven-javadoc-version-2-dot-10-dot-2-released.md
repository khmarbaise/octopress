---
layout: post
title: "Apache Maven JavaDoc Version 2.10.2 Released"
date: 2015-03-18 21:19
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 2.10.2](http://maven.apache.org/plugins/maven-javadoc-plugin/).


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>2.10.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JavaDoc Plugin - Version 2.10.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11138&version=19347)

Bug:

 * {% chjl MJAVADOC-365 %} - Patch: sourceFileExcludes does not work due to inclusion of packages

Improvements:

 * {% chjl MJAVADOC-415 %} - Update plexus-archiver to 2.6.3 and p-utils to 3.0.18
 * {% chjl MJAVADOC-417 %} - Update version of plexus-archive from 2.5 to 2.9


Enjoy,

- The Apache Maven team
