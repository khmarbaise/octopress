---
layout: post
title: "Apache Maven SCM Version 1.9.2 Released"
date: 2014-09-17 17:51
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.9.2](http://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.9.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10527&version=20535)

Bug:

 * {% chjl SCM-759 %} - cannot create Branch with TFS-provider: "TF10125: The path must start with $/"

Tasks:

 * {% chjl SCM-767 %} - mockito should be under test scope, not compile scope for accurev provider
 * {% chjl SCM-768 %} - TfsBranchCommandTest is failing
 * {% chjl SCM-769 %} - Unable to load maven-scm-provider-vss with Eclipse's M2E


Enjoy,

-The Apache Maven team
