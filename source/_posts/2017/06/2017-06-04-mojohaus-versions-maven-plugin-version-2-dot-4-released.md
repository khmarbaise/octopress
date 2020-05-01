---
layout: post
title: "MojoHaus Version Maven Plugin Version 2.4 Released"
date: 2017-06-04 12:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The MojoHaus team is pleased to announce the release of the 
[Versions Maven Plugin Version 2.4](https://www.mojohaus.org/versions-maven-plugin/).

The Versions Plugin is used when you want to manage the versions of artifacts
in a project's POM.

To get this update, simply specify the version in your project's plugin
configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>versions-maven-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

The support for `rules.xml` is marked deprecated and it is intended to
remove support for this in versions-maven-plugin 3.0.0.
If you like to keep the support for this please vote on the [issue-157](https://github.com/mojohaus/versions-maven-plugin/issues/157).


<!-- more -->

[Release Notes](https://www.mojohaus.org/versions-maven-plugin/github-report.html)

Enjoy,

The Mojo team.

Kind regards
Karl Heinz Marbaise

