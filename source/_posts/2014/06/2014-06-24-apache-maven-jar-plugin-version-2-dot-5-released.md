---
layout: post
title: "Apache Maven JAR Plugin Version 2.5 Released"
date: 2014-06-24 12:06
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JAR Plugin, version 2.5](http://maven.apache.org/plugins/maven-jar-plugin/)


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>2.5</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven JAR Plugin - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11137&version=18297)

Bugs:

 * {% chjl MJAR-157 %} - forceUpdate documentation is insufficient
 * {% chjl MJAR-162 %} - skipIfEmpty not work for test-jar goal and empty directories
 * {% chjl MJAR-167 %} - skipIfEmpty outputs incorrect logging nessage

Improvements:

 * {% chjl MJAR-168 %} - Update to latest plexus-archiver
 * {% chjl MJAR-170 %} - please add property 'maven.jar.classifier'
 * {% chjl MJAR-175 %} - Documentation problem for test-jar
 * {% chjl MJAR-176 %} - Usage page should (only) describe default behavior

Tasks:

 * {% chjl MJAR-158 %} - use maven-plugin-tools' java 5 annotations
 * {% chjl MJAR-171 %} - Remove deprecated mojo jar-sign and jar-sign-verify
 * {% chjl MJAR-173 %} - Check correctness of declared deps

-- The Apache Maven Team.
