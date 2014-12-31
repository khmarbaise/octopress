---
layout: post
title: "Apache Maven EAR Plugin Version 2.10 Released"
date: 2014-12-31 16:44
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EAR Plugin, version 2.10](http://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates Java EE Enterprise Archive (EAR) file. It can also
generate the deployment descriptor file (e.g. application.xml).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>2.10</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven EAR Plugin - Version 2.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11132&version=20436)

Bugs:

 * {% chjl MEAR-180 %} - Artifacts with same artifactId/version are ignored in packaging
 * {% chjl MEAR-183 %} - Extra 'temp' directory created in wrong place
 * {% chjl MEAR-188 %} - Project property cannot be resolved inside <env-entry> element

Improvements:

 * {% chjl MEAR-182 %} - Skinny WAR's - Skip Class-Path Modification in Manifest
 * {% chjl MEAR-191 %} - Set prerequisites to Maven 2.2.1
 * {% chjl MEAR-192 %} - Update version of plexus-archiver to 2.5
 * {% chjl MEAR-195 %} - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * {% chjl MEAR-196 %} - Update version of plexus-archiver to 2.6.1
 * {% chjl MEAR-197 %} - Update version of plexus-archiver to 2.6.2
 * {% chjl MEAR-199 %} - Fix integration test which is currently ignored
 * {% chjl MEAR-200 %} - Upgrade to plexus-archiver 2.7
 * {% chjl MEAR-202 %} - Upgrade to maven-plugins version 25 to 26
 * {% chjl MEAR-203 %} - Upgrade maven-filtering to 1.3
 * {% chjl MEAR-204 %} - Upgrade maven-archiver dependency to v2.6
 * {% chjl MEAR-205 %} - Upgrade to maven-plugins parent version 27
 * {% chjl MEAR-210 %} - Following naming conventions of maven-surefire/failsafe-plugin

New Feature:

 * {% chjl MEAR-181 %} - Adding ejb-ref in application.xml

Tasks:

 * {% chjl MEAR-176 %} - Upgrading maven-filtering breaks IT
 * {% chjl MEAR-190 %} - Remove the alias of defaultLibBundleDir

Enjoy,

-The Apache Maven team
