---
layout: post
title: "Mojo Cobertura Maven Plugin 2.7 Released"
date: 2015-03-03 21:19
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[Cobertura Maven Plugin version 2.7](http://mojo.codehaus.org/cobertura-maven-plugin/).

This plugin provides the features of Cobertura within the Maven 2 & 3
environment.

To get this update, simply specify the version in your project's
plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>cobertura-maven-plugin</artifactId>
  <version>2.7</version>
</plugin>
```

<!-- more -->

[Release Notes: Mojo Cobertura Maven Plugin Version 2.7](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11226&version=19561)

Bugs:

 * [MCOBERTURA-86] - no coverage reported for integration-test
 * [MCOBERTURA-161] - cobertura report  appear a lot of  error : JavaNCSS got an error while parsing the java file
 * [MCOBERTURA-180] - Cobertura does not seem to work on OSX
 * [MCOBERTURA-189] - Code coverage is not working with Java 8 sources
 * [MCOBERTURA-190] - com.ibm.icu:icu:2.6.1 dependency makes maven-enforcer-plugin checkSignatureRule to fail

Improvement:

 * [MCOBERTURA-183] - Update Main class finding algorithm to handle Cobertura releases after 2.0.3

Tasks:

 * [MCOBERTURA-187] - Upgrade to Cobertura 2.1.1
 * [MCOBERTURA-192] - Require Java 6

Enjoy,

The Mojo team.

