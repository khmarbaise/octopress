---
layout: post
title: "Apache Maven Release Plugin Version 2.5.1 Released"
date: 2014-09-23 06:59
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Release Plugin, version 2.5.1](http://maven.apache.org/plugins/maven-release-plugin/).

The maven-release provides technology for automating releases, including
the maven-release-plugin.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-release-plugin</artifactId>
  <version>2.5.1</version>
</plugin>
```

<!-- more -->

Release Notes - Maven Release Plugin - Version 2.5.1

Bugs:

 * [MRELEASE-875] - release:prepare does not commit pom.xml if not in the git root
 * [MRELEASE-877] - release:branch commit msg faulty
 * [MRELEASE-885] - When the base pom is a subdirectory, tagging fails in GIT
 * [MRELEASE-888] - Update to SCM version 1.9.2

Improvement:

 * [MRELEASE-883] - Upgrade SCM to 1.9.1


Enjoy,

-The Apache Maven team
