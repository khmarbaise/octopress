---
layout: post
title: "Apache Maven Maven Version 3.2.2 Released"
date: 2014-06-26 19:04
comments: true
categories: [Maven,News,Maven-Releases]
---
Hi 
The Apache Maven Team is pleased to announce the release of 3.2.2

The release notes can be found here:

http://maven.apache.org/docs/3.2.2/release-notes.html

<!-- more -->

[The Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10500&version=20042)

Bugs:

 * {% chjl MNG-4565 %} - Requiring multiple profile activation conditions to be true does not work
 * {% chjl MNG-5590 %} - ${basedir} and ${project.basedir} do not behave the same on file-based profile activation
 * {% chjl MNG-5591 %} - Installing workspace reader triggers MNG-5503
 * {% chjl MNG-5595 %} - name field missing in plugin.xml documentation
 * {% chjl MNG-5596 %} - plugin descriptor model generated from Modello appears in javadoc
 * {% chjl MNG-5609 %} - README.txt in distro incorrectly states JDK requirement as 1.5+
 * {% chjl MNG-5612 %} - effective pom should not contain file-based profile activation fully interpolated but with limited interpolation like seen during profile activation
 * {% chjl MNG-5613 %} - NPE error when building a reactor with duplicated artifacts
 * {% chjl MNG-5620 %} - Prevent LinkageError when CDI is in the classpath
 * {% chjl MNG-5623 %} - Exception when printing Reactor Summary
 * {% chjl MNG-5624 %} - Maven API Plugin descriptor xsd does not exist at advertised location
 * {% chjl MNG-5628 %} - NullPointerException with Maven 3.2.1 when circular dependency exists in POMs
 * {% chjl MNG-5633 %} - NullPointerException when project contains cyclic references
 * {% chjl MNG-5638 %} - Whitespaces matter in <mirrorOf> configuration can cause the incorrect repo to be selected
 * {% chjl MNG-5640 %} - AbstractMavenLifecycleParticipant#afterSessionEnd is not invoked in some cases
 * {% chjl MNG-5645 %} - version of "..." causes InternalErrorException.
 * {% chjl MNG-5647 %} - ${maven.build.timestamp} uses incorrect ISO datetime separator
 * {% chjl MNG-5648 %} - Regression of MNG-5176, DST in effect is ignored

Improvements:

 * {% chjl MNG-5452 %} - ${maven.build.timestamp} should use UTC instead of local timezone (or be configurable)
 * {% chjl MNG-5608 %} - warn if file-based profile activation uses ${project.basedir} since only ${basedir} is supported
 * {% chjl MNG-5610 %} - README.txt in distro should be updated
 * {% chjl MNG-5625 %} - Provide a terse information about the used thread builder
 * {% chjl MNG-5630 %} - improve display of forked executions
 * {% chjl MNG-5631 %} - WARNING about not triggered patterns in assembly descriptor
 * {% chjl MNG-5639 %} - Support resolution of Import Scope POMs from Repo that contains a ${parameter}

Task:

 * {% chjl MNG-3954 %} - Remove the RuntimeInfo required in the setting.mdo

Wishes:

 * {% chjl MNG-2199 %} - Support version ranges in parent elements
 * {% chjl MNG-5346 %} - update maven-plugin-plugin:descriptor default binding from generate-resources phase to process-classes

