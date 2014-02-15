---
layout: post
title: "Apache Maven Plugin Testing 3.1.0 Released"
date: 2014-02-15 17:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Testing, version 3.1.0](http://maven.apache.org/plugin-testing/)

The Maven Plugin Testing contains the necessary tools to be able
to test Maven Plugins.

You should specify the version in your project's dependency configuration:

<dependency>
    <groupId>org.apache.maven.plugin-testing</groupId>
    <artifactId>maven-plugin-testing-harness</artifactId>
    <version>3.1.0</version>
</dependency>

<!-- more -->

[Release Notes - Maven Plugin Testing - Version 3.1.0](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11740&version=20031)

Improvement:

 * {% chjl MPLUGINTESTING-36 %} - Helpers to manage test projects
 * {% chjl MPLUGINTESTING-37 %} - Provide convenince methods to work with MavenProject


Enjoy,

-The Apache Maven team

