---
layout: post
title: "Mojo Tidy Maven Plugin Version 1.0-beta-1 Released"
date: 2015-02-11 18:38
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[Tidy Maven Plugin, version 1.0-beta-1](http://mojo.codehaus.org/tidy-maven-plugin/).

The Tidy Plugin is used when you want to sort the sections of a
pom.xml into the canonical order.


To get this update, simply specify the version in your project's
plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>tidy-maven-plugin</artifactId>
  <version>1.0-beta-1</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11062&version=19322)

Bugs:

 * {% chjl MOJO-1981 %} - Empty row inserted before closing project element
 * {% chjl MOJO-1990 %} - build end tag is not being indented correctly for tab indention
 * {% chjl MOJO-1991 %} - Whitespace gets deleted around toplevel XML comments

Improvement:

 * {% chjl MOJO-2066 %} - JVM used to run Tidy Maven Plugin must now be Java 1.6 or newer

Wish:

 * {% chjl MOJO-1945 %} - tidy check goal


Enjoy,

The Mojo team.

