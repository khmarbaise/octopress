---
layout: post
title: "Mojo's JDepend Maven Plugin Version 2.0 - Released"
date: 2014-04-22 21:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[JDepend Maven Plugin version 2.0](http://mojo.codehaus.org/jdepend-maven-plugin/).

This plugin produces a nicely formatted metrics report based on your project.

To get this update, simply specify the version in your project's plugin configuration: 

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>jdepend-maven-plugin</artifactId>
  <version>2.0</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=13231&version=20128)

Bug:

 * {% chjl MJDEPEND-8 %} - Add missing scm entry in pom

Improvements:

 * {% chjl MJDEPEND-6 %} - Stabilize Plugin IT's by using a setup project
 * {% chjl MJDEPEND-9 %} - Improve Usage page
 * {% chjl MJDEPEND-10 %} - State that plugin uses the JDepend library and include link
 * {% chjl MJDEPEND-11 %} - Change the license text.

New Feature:

 * {% chjl MJDEPEND-1 %} - Add a -no-fork goal

Enjoy,

The Mojo team.
