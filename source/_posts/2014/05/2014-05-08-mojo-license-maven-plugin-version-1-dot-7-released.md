---
layout: post
title: "Mojo License Maven Plugin Version 1.7 Released"
date: 2014-05-08 19:31
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[License Maven Plugin, version 1.7](http://mojo.codehaus.org/license-maven-plugin).

This plugin manages the license of a maven project and its dependencies
(update file headers, download dependencies licenses, check thirdparty
licenses, .).

To get this update, simply specify the version in your project's plugin
configuration: 

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>license-maven-plugin</artifactId>
  <version>1.7</version>
</plugin>
```

<!-- more -->

Description
-----------

This License Plugin has the following goals:

* license:add-third-party

  Goal to generate the third-party license file. This file contains a list of
  the dependencies and their licenses. Each dependency and it's license is
  displayed on a single line in the format
  
   (<license-name>) <project-name> <groupId>:<artifactId>:<version> -
  <project-url>
  It will also copy it in the class-path (says add the generated directory as a
  resource of the build).

* license:aggregate-add-third-party

  This aggregator goal (will be executed only once and only on pom projects)
  executed the add-third-party on all his modules (in a parellel build cycle)
  then aggreates all the third-party files in final one in the pom project.

* license:check-file-header

  The goal to check if the state of header on project source files.

* license:comment-style-list

  Displays all the available comment style to box file headers.

* license:download-licenses

  Download the license files of all the current project's dependencies, and
  generate a summary file containing a list of all dependencies and their
  licenses.

* license:license-list

  Display all available licenses.

* license:third-party-report

  Generates a report of all third-parties detected in the module.

* license:update-file-header

  The goal to update (or add) the header on project source files. This goal
  replace the update-header goal which can not deal with Copyright. This goal
  use a specific project file descriptor project.xml to describe all files to
  update for a whole project.

* license:update-project-license

  Updates (or creates) the main project license file according to the given
  license defines as licenseName. Can also generate a bundled license file (to
  avoid collision names in class-path). This file is by default generated in
  META-INF class-path directory.

Useful links
------------

* JIRA: http://jira.codehaus.org/browse/MLICENSE
* svn:  https://svn.codehaus.org/mojo/tags/license-maven-plugin-1.7


Release Notes

Bug:

 * {% chjl MLICENSE-55 %}  - "could not rename" warning whenever the header of a source file is updated
 * {% chjl MLICENSE-79 %}  - add-third-party mojo may add unwanted dependencies to the generated 
                             third party file when executing in multiple projects in a single maven build.
 * {% chjl MLICENSE-86 %}  - \[WARNING\] could not rename
 * {% chjl MLICENSE-105 %} - Fix some log messages

Improvement:

 * {% chjl MLICENSE-103 %} - Don't show each single file name

Enjoy,

The Mojo team.

tony
