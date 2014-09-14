---
layout: post
title: "Mojo AspectJ Maven Plugin Version 1.7 Released"
date: 2014-09-14 10:37
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the
[AspectJ-Maven-Plugin version 1.7](http://mojo.codehaus.org/aspectj-maven-plugin/), 
which contains updates to the internal AspectJ toolset and several bug fixes.

The AspectJ-Maven-Plugin weaves AspectJ aspects into
your classes using the AspectJ compiler ("ajc").

To get this update, simply specify the version in your project's plugin
configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>aspectj-maven-plugin</artifactId>
  <version>1.7</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11781&version=19839)

Bugs:

 * {% chjl MASPECTJ-129 %} - Change name on site to "Mojo's AspectJ Maven Plugin"
 * {% chjl MASPECTJ-131 %} - JDK 8 Support
 * {% chjl MASPECTJ-133 %} - Integration tests JavaSourcesDefault and JavaSourcesList does not work on Windows
 * {% chjl MASPECTJ-135 %} - Some ITs could fail on Windows
 * {% chjl MASPECTJ-136 %} - Misconfigured dependencyResolution in AjcReportMojo

Improvements:

 * {% chjl MASPECTJ-132 %} - Upgrade to AspectJ version 1.8
 * {% chjl MASPECTJ-134 %} - Warnings via <warn> are reported without file name and line number


Enjoy,

The Mojo team.

Lennart Jörelid
