---
layout: post
title: "MojoHaus Templating Maven Plugin Version 1.0.0 Released"
date: 2015-11-27 14:46
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The MojoHaus team is pleased to announce the release of the 
[Templating Maven Plugin Version 1.0.0](http://www.mojohaus.org/templating-maven-plugin/).

The templating maven plugin handles copying files from a source to a given
output directory, while filtering them. This plugin is useful to filter Java
Source Code if you need for example to have things in that code replaced with
some properties values.

To get this update, simply specify the version in your project's plugin
configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>templating-maven-plugin</artifactId>
  <version>1.0.0</version>
</plugin>
```

[Release Notes](http://www.mojohaus.org/templating-maven-plugin/github-report.html)

Enjoy,

The Mojo team.

