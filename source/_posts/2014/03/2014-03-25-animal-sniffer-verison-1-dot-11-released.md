---
layout: post
title: "Animal Sniffer Verison 1.11 Released"
date: 2014-03-25 19:20
comments: true
categories: [News,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi,

The Mojo team is pleased to announce the release of Animal Sniffer version 1.11.

This release permits the use of custom annotations in lieu of
@IgnoreJRERequirement

Animal Sniffer provides tools to assist verifying that classes
compiled with a newer JDK/API are compatible with an older JDK/API.

The following tools are provided by animal sniffer:

 * [A command line tool to dump the class file version number](http://mojo.codehaus.org/animal-sniffer/animal-sniffer/index.html)

 This helps you track down the offending jar file when you see
  UnsupportedClassVersionError.

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

The artifacts are available from the Maven Central repository.

Release Notes - Mojo Animal Sniffer - Version 1.11

Improvement:

 * {% chjl MANIMALSNIFFER-41 %} - Define a custom annotation instead of relying on @IgnoreJRERequirement

 Enjoy,

The Mojo Team.

