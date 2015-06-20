---
layout: post
title: "Apache Maven EJB Plugin Version 2.5.1 Released"
date: 2015-06-20 16:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EJB Plugin Version 2.5.1](http://maven.apache.org/plugins/maven-ejb-plugin/).

This plugin generates J2EE Enterprise Javabean (EJB) file as well as the
associated client jar.


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ejb-plugin</artifactId>
  <version>2.5.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven EJB Plugin - Version 2.5.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317421&version=12332797):

Bug:

 * {% ajl MEJB-83 %} - EJB jar build on windows has broken file permissions Improvement

Improvements:

 * {% ajl MEJB-84 %} - Update to fluido skin 1.4

Enjoy,

-The Apache Maven team
