---
layout: post
title: "Apache Maven JavaDoc Plugin Version 2.10 Released"
date: 2014-09-21 23:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, Version 2.10](http://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the specified project.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>2.10</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven JavaDoc Version 2.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11138&styleName=Html&version=19448)

Bugs:

 * [MJAVADOC-351] - Javadoc:fix fixTags parameter doesn't support 'return' value
 * [MJAVADOC-371] - Goals missing from overview page
 * [MJAVADOC-372] - Index page should refer to Apache Maven for at least the first mention
 * [MJAVADOC-386] - Documentation links to oracle web site are broken
 * [MJAVADOC-394] - javadoc is not found properly by default under Oracle's JDK 7+ on Mac OSX
 * [MJAVADOC-398] - Classes from build output directory can cause failure

Improvements:

 * [MJAVADOC-376] - please add property 'maven.javadoc.classifier'
 * [MJAVADOC-380] - Add Maven version used to Created-By entry in manifest
 * [MJAVADOC-395] - Add JDK8 support to maven-javadoc-plugin
 * [MJAVADOC-403] - MavenProject/MavenSession Injection as a parameter instead as a component.

New Feature:

 * [MJAVADOC-369] - New goals javadoc-no-fork and test-javadoc-no-fork which will not invoke generate-*-sources


Enjoy,

-The Apache Maven team
