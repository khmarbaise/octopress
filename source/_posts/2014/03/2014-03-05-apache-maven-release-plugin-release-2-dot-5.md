---
layout: post
title: "Apache Maven Release Plugin - Release 2.5"
date: 2014-03-05 18:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the Apache
[Maven Release Plugin, version 2.5, together with the
maven-release-manager](http://maven.apache.org/maven-release/maven-release-plugin/).

This plugin automates release management.

[Maven Release Manager](http://maven.apache.org/maven-release/maven-release-manager/)

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-release-plugin</artifactId>
  <version>2.5</version>
</plugin>
``` xml

<!-- more -->

[Release Notes - Maven Release Plugin - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11144&version=19017)


Bugs:

 * {% chjl MRELEASE-812 %} - "prepare" does not commit before tagging and therefore deploys snapshot instead of release
 * {% chjl MRELEASE-862 %} - Upgrade to Apache Maven SCM 1.9


Note in particular that MRELEASE-862 fixes the release plugin to work
with git version 1.8 and newer.

Enjoy,

-The Apache Maven team
