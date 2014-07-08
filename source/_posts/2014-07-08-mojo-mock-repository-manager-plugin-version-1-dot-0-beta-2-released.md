---
layout: post
title: "Mojo Mock Repository Manager Plugin Version 1.0-beta-2 Released"
date: 2014-07-08 20:43
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi,

The Mojo team is pleased to announce the release of the 
[Mock Repository Manager Maven Plugin version 1.0-beta-2](http://mojo.codehaus.org/mrm-maven-plugin/).

The Mock Repository Manager Plugin is used when you want to test Maven
plugins against specific sets of dependencies in a repository.


To get this update, simply specify the version in your project's plugin
configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>mrm-maven-plugin</artifactId>
  <version>1.0-beta-2</version>
</plugin>
```

<!-- more -->

Release Notes - Mojo's Mock Repository Manager - Version 1.0-beta-2

Bugs:

 * {% chjl MMOCKRM-9 %} - Site goals page only lists help goal (other goals missing in list)
 * {% chjl MMOCKRM-11 %} - Param propertyName should have a default value
 * {% chjl MMOCKRM-13 %} - downloading /favicon.ico throws an emptyStackException

Improvement:

 * {% chjl MMOCKRM-12 %} - Expose settings.xml for non-localhost users

Enjoy,

The Mojo team.

Robert Scholte 
