---
layout: post
title: "Apache Maven SCM Version 1.9.4 Released"
date: 2015-04-02 08:36
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.9.4](http://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.9.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10527&version=20624)


Bugs:

 * {% chjl SCM-764 %} - username and credentials shown as INFO on commadline
 * {% chjl SCM-780 %} - Duplicate connection url's properties
 * {% chjl SCM-786 %} - Missing dependency on JUnit

Improvements:

 * {% chjl SCM-778 %} - Upgrade junit and hamcrest
 * {% chjl SCM-793 %} - Upgrade maven-modello-plugin to 1.8.2
 * {% chjl SCM-794 %} - Configure maven release plugin to autoVersionSubmodules

Task:

 * {% chjl SCM-789 %} - Upgrade to maven-parent version 26

Wish:

 * {% chjl SCM-785 %} - Upgrade Plugin Required Maven Version to 2.2.1


Enjoy,

-The Apache Maven team
