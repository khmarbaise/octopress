---
layout: post
title: "Apache Maven Toolchains Plugin Version 1.1 Released"
date: 2014-11-15 12:23
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Toolchains Plugin, version 1.1](http://maven.apache.org/plugins/maven-toolchains-plugin/).

The Toolchains Plugins allows to share configuration across plugins. For 
example to make sure the plugins like compiler, surefire, javadoc, webstart 
etc. all use the same JDK for execution.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-toolchains-plugin</artifactId>
  <version>1.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Toolchains Plugin - Version 1.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12063&version=15920).

Bug:

* {% chjl MTOOLCHAINS-6 %} Cannot create custom toolchain type

Improvements:

 * {% chjl MTOOLCHAINS-11 %} Double check toolchain type to protect against core bug MNG-5716
 * {% chjl MTOOLCHAINS-10 %} Improve plugin output
 * {% chjl MTOOLCHAINS-1 %} Document how to create new toolchains

Tasks:

 * {% chjl MTOOLCHAINS-9 %} Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MTOOLCHAINS-8 %} improve code and javadoc
 * {% chjl MTOOLCHAINS-7 %} add an IT to check that the plugin works as expected
 * {% chjl MTOOLCHAINS-4 %} use maven-plugin-tools' java 5 annotations

Enjoy,

-The Maven team
