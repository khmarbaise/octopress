---
layout: post
title: "Apache Maven SCM Publish Plugin Version 1.0 Released"
date: 2014-02-05 19:51
comments: true
categories: [News,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM Publish Plugin, version 1.0](http://maven.apache.org/plugins/maven-scm-publish-plugin/)

The maven-scm-publish-plugin is a utility plugin to allow publishing Maven 
website to any supported SCM. The primary goal was to have an utility plugin 
to allow Apache projects to publish Maven websites via the ASF svnpubsub 
system. The plugin has been tested with git scm too and by example can push 
content for github pages.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-scm-publish-plugin</artifactId>
  <version>1.0</version>
</plugin>
```
<!-- more -->

[Release Notes - maven-scm-publish-plugin - Version 1.0](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12730&styleName=Html&version=18940)

Improvements:

 * {% chjl MSCMPUB-6 %} - when creating a directory in svn, if checkout fails, wait 
a few seconds and retry
 * {% chjl MSCMPUB-7 %} - Add timestamp when commit starts (and ends)
 * {% chjl MSCMPUB-10 %} - Pick up SCM credentials from settings.xml server section
 * {% chjl MSCMPUB-11 %} - display content size (number of directories, files, and size)

Story:

 * {% chjl MSCMPUB-4 %} - Need a working example for GitHub/gh-pages, preferably 
naturally linked to natural site lifecycle, and multi-module

Task:

 * {% chjl MSCMPUB-3 %} - Upgrade to SCM-1.9

Enjoy,

The Apache Maven team
