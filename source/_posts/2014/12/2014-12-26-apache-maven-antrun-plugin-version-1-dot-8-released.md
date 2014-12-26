---
layout: post
title: "Apache Maven AntRun Plugin Version 1.8 Released"
date: 2014-12-26 13:13
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven AntRun Plugin, version 1.8](http://maven.apache.org/plugins/maven-antrun-plugin/).

This plugin provides the ability to run Ant tasks from within Maven. You can
even embed your Ant scripts in the POM!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-antrun-plugin</artifactId>
  <version>1.8</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven AntRun Plugin - Version 1.8](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11125&version=18043).


Bugs:

 * {% chjl MANTRUN-98 %} - multiple input tasks leads to exception
 * {% chjl MANTRUN-175 %} - Documentation for failOnError is wrong

Improvements:

 * {% chjl MANTRUN-191 %} - Update version of plexus-utils to 3.0.18
 * {% chjl MANTRUN-193 %} - Upgrade Maven Plugin plugin to 3.3

New Feature:

 * {% chjl MANTRUN-190 %} - Upgrade Ant to 1.9.x

Tasks:

 * {% chjl MANTRUN-176 %} - use maven-plugin-tools' java 5 annotations
 * {% chjl MANTRUN-187 %} - Make Plugin only 2.2.1 compatible - get rid of Maven 2.0
 * {% chjl MANTRUN-188 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.


Enjoy,

-The Apache Maven team

