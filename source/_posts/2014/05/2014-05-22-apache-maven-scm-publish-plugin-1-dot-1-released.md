---
layout: post
title: "Apache Maven SCM Publish Plugin 1.1 Released"
date: 2014-05-22 18:49
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM Publish Plugin, version 1.1](http://maven.apache.org/plugins/maven-scm-publish-plugin/)

This plugin is a utility plugin to allow publishing Maven website to any 
supported SCM. The primary goal was to have an utility plugin to allow Apache 
projects to publish Maven websites via the ASF svnpubsub system. The plugin 
has been tested with git scm too and by example can push content for github 
pages.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-scm-publish-plugin</artifactId>
  <version>1.1</version>
</plugin>
```

<!-- more -->

Release Notes - Maven SCM Publish Plugin - Version 1.1

Bug:

 * {% chjl MSCMPUB-12 %} - scmBranch ignored when tryUpdate is specified

Improvement:

 * {% chjl MSCMPUB-15 %} - log files and directories added/deleted as INFO

New Feature:

 * {% chjl MSCMPUB-14 %} - add all directories in 1 command per default

Enjoy,

-The Apache Maven team
