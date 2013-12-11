---
layout: post
title: "Apache Maven Plugin Testing Version 3.0.0 Released"
date: 2013-12-11 21:19
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Testing, version 3.0.0](http://maven.apache.org/plugin-testing/)


<!-- more -->

[Release Notes - Apache Maven Plugin Testing - Version 3.0.0](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11740&version=18839)

Fixed bugs:

 * {% chjl MPLUGINTESTING-27 %} - ClassDefNotFound exception
 * {% chjl MPLUGINTESTING-32 %} - lookupConfiguredMojo prefers mojo config over pom.xml
 * {% chjl MPLUGINTESTING-33 %} - Suboptimal/unexpected plugin artifact file

Improvements:

 * {% chjl MPLUGINTESTING-30 %} - Maven 3.1 compatibility
 * {% chjl MPLUGINTESTING-31 %} - Ability to customize guice container

New Feature:

 * {% chjl MPLUGINTESTING-28 %} - Rule which just embeds an AbstractMojoTestCase so Junit4 may be used


Have fun.
