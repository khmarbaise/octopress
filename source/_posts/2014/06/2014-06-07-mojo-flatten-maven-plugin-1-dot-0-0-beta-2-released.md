---
layout: post
title: "Mojo Flatten Maven Plugin 1.0.0 beta 2 Released"
date: 2014-06-07 13:44
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi,

The Mojo team is pleased to announce the release of the 
[flatten-maven-plugin version 1.0.0-beta-2](http://mojo.codehaus.org/flatten-maven-plugin/).

Flatten Maven Plugin generates a flattened version of your pom.xml and makes maven to install
and deploy this one instead of the original pom.xml.

To get this update, simply specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>flatten-maven-plugin</artifactId>
  <version>1.0.0-beta-2</version>
</plugin>
```

<!-- more -->

All you need to do is add the plugin to the plugins in your build section.

Release Notes:

* {% chjl MOJO-2027 %} ability to preserve developer information
* {% chjl MOJO-2030 %} flatten-maven-plugin overrides basedir and sets it to target/, so src/site/site.xml is not used and any documentation beneath src/site is not rendered

Enjoy,

The Mojo team.

Jörg 
