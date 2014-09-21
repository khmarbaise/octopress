---
layout: post
title: "Apache Maven Dependency Plugin Version 2.9 Released"
date: 2014-09-21 23:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependency Plugin, version 2.9](http://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It can
copy and/or unpack artifacts from local or remote repositories to a specified
location.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-dependency-plugin</artifactId>
  <version>2.9</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 2.9](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11214&version=19229)

Bugs:

 * {% chjl MDEP-424 %} - Maven Dependency Plugin homepage should link to dependency:list-repositories
 * {% chjl MDEP-439 %} - maven-dependency-plugin not compatible with Java 8
 * {% chjl MDEP-445 %} - dependency plugin fails with >9 threads
 * {% chjl MDEP-448 %} - NullPointerException when classifier sources was chosen

Improvements:

 * {% chjl MDEP-443 %} - dependency tree should be the same when using verbose or not
 * {% chjl MDEP-450 %} - Add goal display-ancestors which will output the line of heritage for parent poms
 * {% chjl MDEP-457 %} - Enhanced documentation for includeArtifactIds and includeGroupIds
 * {% chjl MDEP-459 %} - Update maven-dependency-analyzer to 1.5
 * {% chjl MDEP-460 %} - Removed dependency plexus-container-default:1.0-alpha-9-stable-1
 * {% chjl MDEP-461 %} - Upgrade plexus-archiver to 2.4.4
 * {% chjl MDEP-462 %} - Upgrade to Maven Dependency Tree version 2.3
 * {% chjl MDEP-463 %} - Fix RAT Report
 * {% chjl MDEP-464 %} - Upgrade maven-invoker 2.0.11 to 2.1.1

New Feature:

 * {% chjl MDEP-427 %} - Add user property for addParentPoms option

Tasks:

 * {% chjl MDEP-227 %} - Bump to Doxia 1.1.1
 * {% chjl MDEP-452 %} - Use mock repository manager for ITs
 * {% chjl MDEP-453 %} - Change Maven prerequisite to 2.2.1


Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
