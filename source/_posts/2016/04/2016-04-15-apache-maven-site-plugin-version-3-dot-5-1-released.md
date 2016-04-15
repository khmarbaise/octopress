---
layout: post
title: "Apache Maven Site Plugin Version 3.5.1 Released"
date: 2016-04-15 16:54:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.5.1](http://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
http://maven.apache.org/plugins/maven-site-plugin/download.cgi

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.5.1</version>
</plugin>
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.5.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12334899&styleName=Text)

Bugs:

 * {% ajl MSITE-771 %} -  FAQ Entry for difference between mvn site and mvn site:site is incorrect
 * {% ajl MSITE-769 %} -  Can't use property in breadcrumbs items in child module site descriptor

Improvements:

 * {% ajl MSITE-768 %} -  Support Velocity's #parse and #include
 * {% ajl MSITE-700 %} -  All inclusion of resources up to ${basedir} when Velocity 1.7 is used

Enjoy,
 
-The Apache Maven team

