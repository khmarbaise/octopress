---
layout: post
title: "Mojo Animal Sniffer Version 1.14 Released"
date: 2015-03-03 21:10
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of 
[Animal Sniffer version 1.14](http://mojo.codehaus.org/animal-sniffer/).

Animal Sniffer provides tools to assist verifying that classes
compiled with a newer JDK/API are compatible with an older JDK/API.

The following tools are provided by animal sniffer:

 * [A command line tool to dump the class file version number](http://mojo.codehaus.org/animal-sniffer/animal-sniffer/index.html)
   This helps you track down the offending jar file when you see UnsupportedClassVersionError.

* [A set of ANT tasks](http://mojo.codehaus.org/animal-sniffer/animal-sniffer-ant-tasks/index.html)
  for verifying that your classes comply with an API signature as well
  as tasks for creating API signatures from a JDK, or a collection or
  jar and class files, or a collection of other API signature files, or
  combination of these elements.

* [A rule for use in the maven-enforcer-plugin](http://mojo.codehaus.org/animal-sniffer/animal-sniffer-enforcer-rule/index.html)
  for verifying that your classes comply with an API signature .

* [A maven plugin](http://mojo.codehaus.org/animal-sniffer-maven-plugin/index.html)
  for verifying that your classes comply with an API signature as well as
  for creating API signatures from a JDK, or the current module's
  classes, or the current module's dependencies, or a collection of
  other API signature files, or combination of these elements.

The artifacts have are available from the Maven Central repository.

<!-- more -->

[Release Notes - Mojo's Animal Sniffer - Version 1.14](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12070&version=20742)

Bugs:

 * {% chjl MANIMALSNIFFER-49 %} - Support covariant return types
 * {% chjl MANIMALSNIFFER-53 %} - Documentation error : checking dependency classes

Improvement:

 * {% chjl MANIMALSNIFFER-50 %} - Apply plugin Annotations (instead of current doclet tags)

Task:

 * {% chjl MANIMALSNIFFER-51 %} - Upgrade ASM to 5.0.3

The Mojo Team.
