---
layout: post
title: "MojoHaus Build Number Maven Plugin Version 1.4 Released"
date: 2014-05-02 10:35
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases,MojoHaus]
---
The Build Number Maven Plugin team is pleased to announce the
[buildnumber-maven-plugin version 1.4](http://www.mojohaus.org/buildnumber-maven-plugin/).

This mojo is designed to get a unique build number for each time you build your project. 
So while your version may remain constant at 1.0-SNAPSHOT for many iterations until release, 
you will have a build number that can uniquely identify each build during that time.

To get this update, simply specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>buildnumber-maven-plugin</artifactId>
  <version>1.4</version>
</plugin>
```
<!-- more -->


Changes in this version:

* Add basic Git Integration Test
* README.md: make sure IT tests are executed
* Add README.md
* Add configuration for travis-ci.org
* Update to new mojo-parent
* Change issue tracking link
* Correct link to License
* Change scm entry after migration to github

You can take a look at the [difference](https://github.com/mojohaus/buildnumber-maven-plugin/compare/buildnumber-maven-plugin-1.3...buildnumber-maven-plugin-1.4).

The MojoHaus team.

