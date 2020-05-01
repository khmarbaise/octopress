---
layout: post
title: "Apache Maven JLink Plugin Version 3.0.0-alpha-1 Released"
date: 2017-09-19 19:30:03
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JLink Plugin, version 3.0.0-alpha-1](https://maven.apache.org/plugins/maven-jlink-plugin/).

This is the first public release of this plugin. It is explicitly an alpha version which 
means you can give feedback how to use it or how to improve the plugin.

The JLink Plugin is intended to create a [Modular Java Run-Time Images](https://openjdk.java.net/jeps/220) via jlink.

https://maven.apache.org/plugins/maven-jlink-plugin/

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-jlink-plugin</artifactId>
    <version>3.0.0-alpha-1</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-jlink-plugin/download.cgi


<!-- more -->

[Release Notes - Maven JLink Plugin - Version 3.0.0-alpha-1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12321432&version=12341361)

Dependency upgrade:

 * {% ajl MJLINK-2 %} - Upgrade several plugins to get a working site generation

Enjoy,

-The Apache Maven team
