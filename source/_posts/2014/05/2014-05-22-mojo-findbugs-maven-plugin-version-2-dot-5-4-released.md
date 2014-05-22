---
layout: post
title: "Mojo FindBugs Maven Plugin Version 2.5.4 Released"
date: 2014-05-22 19:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi,
The Mojo team is pleased to announce the release of the 
[FindBugs Maven Plugin version 2.5.4](http://mojo.codehaus.org/findbugs-maven-plugin-2.5.4/)
FindBugs uses static analysis to inspect Java bytecode for occurrences
of bug patterns.

To get this update, simply specify the version in your project's
plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>findbugs-maven-plugin</artifactId>
  <version>2.5.4</version>
</plugin>
```

<!-- more -->

We solved the following issues:

Release Notes - Mojo's FindBugs Maven Plugin - Version 2.5.4

Bug:

 * {% chjl MFINDBUGS-189 %} - The plugin generates reports incompatible with the 'maven-jxr-plugin' version 2.4.

Improvement:

 * {% chjl MFINDBUGS-195 %} - Update to Findbugs 2.0.3


Enjoy,
Garvin LeClaire
