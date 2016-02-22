---
layout: post
title: "Mojo RPM Maven Plugin Version 2.1.5 Released"
date: 2016-02-21 16:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[RPM Maven Plugin version 2.1.5](http://mojo.codehaus.org/rpm-maven-plugin/).

The RPM Maven Plugin allows artifacts from one or more projects to be packaged
in an RPM for distribution. In addition to project artifacts, the RPM can
contain other resources to be installed with the artifacts and scripts to be
run while the package is being installed and removed. This plugin does not
support the full range of features available to RPMs. In particular, source
RPMs can not be generated and the spec files which are used do not do any build
process (the plugin collects the files and "installs" them for packaging).


To get this update, simply specify the version in your project's plugin
configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>rpm-maven-plugin</artifactId>
  <version>2.1.5</version>
</plugin>
```

[Release Notes RPM Maven Plugin Version 2.1.5](https://github.com/mojohaus/rpm-maven-plugin/issues?q=milestone%3A2.1.5+is%3Aclosed)

Enjoy,

The Mojo team.

