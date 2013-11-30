---
layout: post
title: "Apache Maven EAR Plugin Version 2.9 Released"
date: 2013-11-30 18:17
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---

The Apache Maven team is pleased to announce the release of the 
[Apache Maven Ear Plugin, version 2.9](http://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates a Java EE Enterprise Archive (EAR) file. It can also 
generate the deployment descriptor file (e.g. application.xml).

<!-- more -->

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>2.9</version>
</plugin>
```

[Release Notes - Apache Maven Ear Plugin - Version 2.9](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11132&version=18770)


The following bugs have been fixed:

 * {% chjl MEAR-149 %} - skinnyWars and SNAPSHOT unique dependencies
 * {% chjl MEAR-158 %} - Elements library-directory and env-entry out of sequence in application.xml for JEE 6
 * {% chjl MEAR-160 %} - Performance regression while copying artifacts into ear
 * {% chjl MEAR-162 %} - skinnyWars with wars without manifest Class-Path attribute
 * {% chjl MEAR-167 %} - Classes from different modules with the same artifactId are merged when skinnyWars set to TRUE

and the following improvements have been made:

 * {% chjl MEAR-88 %} - Improve documentation on combining Eclipse and Maven Integration
 * {% chjl MEAR-164 %} - support for useJvmChmod in archiver and true per default
 * {% chjl MEAR-169 %} - Add support for EAR 7
 * {% chjl MEAR-172 %} - Enhance the exception thrown when the EAR plugin can not map an included artifact
 * {% chjl MEAR-174 %} - generate-application-xml does not support the definition of an application id
 * {% chjl MEAR-178 %} - Change "J2EE" and sun link on index page


Enjoy,

-The Apache Maven team

