---
layout: post
title: "Apache Maven Stage Plugin Version 1.0 Released"
date: 2015-03-04 19:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Stage Plugin, version 1.0](http://maven.apache.org/plugins/maven-stage-plugin/).

This plugin is used to create bundles of artifacts that can be uploaded to the
central repository.


<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-stage-plugin</artifactId>
  <version>1.0</version>
</plugin>

Release Notes - Maven Stage Plugin - Version 1.0

Bugs:

 * [MSTAGE-7] - Unable to use archiva as http source with maven-stage-plugin
 * [MSTAGE-9] - Stage plugin fails with ClassCastException
 * [MSTAGE-16] - Stage plugin doesn't work with maven3

Improvement:

 * [MSTAGE-18] - Fix RAT Report

Tasks:

 * [MSTAGE-15] - use maven-plugin-tools' java 5 annotations
 * [MSTAGE-19] - Upgrade maven-wagon to 2.8

Enjoy,

-The Apache Maven team
