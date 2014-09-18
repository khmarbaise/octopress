---
layout: post
title: "Apache Maven Wagon Version 2.7 Released"
date: 2014-09-18 07:53
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Wagon, Version 2.7](http://maven.apache.org/wagon/)

Maven Wagon is a transport abstraction that is used in Maven's
artifact and repository handling code.

<!-- more -->
[Release Notes - Apache Maven Wagon Version 2.7](http://jira.codehaus.org/secure/ReleaseNote.jspa?version=20560&styleName=Text&projectId=10335&Create=Create)


New Feature:

 * {% chjl WAGON-420 %} - Implements RFC 6585 (return code 429: too many requests)

Bugs:

 * {% chjl WAGON-407 %} - wagon-maven-plugin ITs fail with missing class: org.apache.commons.io.IOUtils
 * {% chjl WAGON-418 %} - Changes from WAGON-388 broke the WebDAV Wagon
 * {% chjl WAGON-419 %} - HTTP wagons incorrectly encode blank space in URLs causing resources to be uploaded/looked up with a "+" sign


Enjoy,

-The Apache Maven team
