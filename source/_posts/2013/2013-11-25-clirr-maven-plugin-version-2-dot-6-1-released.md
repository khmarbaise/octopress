---
layout: post
title: "Clirr Maven Plugin Version 2.6.1 Released"
date: 2013-11-25 20:05
comments: true
categories: [Maven, News, Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[Clirr Maven Plugin version 2.6.1](http://mojo.codehaus.org/clirr-maven-plugin/)

[Clirr](http://clirr.sourceforge.net/) is an application, which allows you to compare 
binaries or sources for compatibility. The Clirr Maven Plugin allows 
you to use Clirr from Maven 2. This version of the plugin uses Clirr 0.6.

<!-- more -->

To get this update, simply specify the version in your project's
plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>clirr-maven-plugin</artifactId>
  <version>2.6.1</version>
</plugin>
```

[Release Notes - Mojo's Clirr Maven Plugin - Version 2.6.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11227&version=19639)

The following improvement has been made:

* {% chjl MCLIRR-61 %} - Allow any classpath artifact to be checked for changes

