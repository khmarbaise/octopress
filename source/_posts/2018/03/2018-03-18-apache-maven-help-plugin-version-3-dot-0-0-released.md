---
layout: post
title: "Apache Maven Help Plugin Version 3.0.0 Released"
date: 2018-03-17 23:15:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Help Plugin, version 3.0.0](http://maven.apache.org/plugins/maven-ear-plugin/)

The Maven Help Plugin is used to get relative information about a project or
the system. It can be used to get a description of a particular plugin,
including the plugin's goals with their parameters and component requirements,
the effective POM and effective settings of the current build, and the profiles
applied to the current project being built.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-help-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/plugins/maven-help-plugin/download.cgi).
 

<!-- more -->

[Release Notes - Maven Help Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317522&version=12330788)

Bugs:

 * {%ajl MPH-53 %} - mvn help:describe returns the version that is specified in metadata instead of  the one in the parent pom
 * {%ajl MPH-87 %} - help:effective-pom/effective-settings uses platform encoding and garbles non-ASCII characters, emits invalid XML
 * {%ajl MPH-97 %} - [Patch] maven-help-plugin does not build with latest version of maven-plugin-testing-harness
 * {%ajl MPH-99 %} - Evaluate has no output in quiet mode
 * {%ajl MPH-105 %} - Effective pom aggregation is not triggered
 * {%ajl MPH-107 %} - Mojos use inconsistent line endings throughout
 * {%ajl MPH-108 %} - Patch for MPH-72 not fully applied
 * {%ajl MPH-110 %} - Cannot run ITs successfully
 * {%ajl MPH-111 %} - IT 'effective-pom_properties' fails if run with -Dinvoker.mergeUserSettings
 * {%ajl MPH-114 %} - Goal fails with “Unable to get the POM for the artifact”
 * {%ajl MPH-119 %} - The "artifact" parameter is not taken into account with Maven 3
 * {%ajl MPH-121 %} - incorrect text in help:describe for cmd
 * {%ajl MPH-123 %} - all-profiles does not show right active status

Improvements:

 * {%ajl MPH-106 %} - add gav parameter to calculate effective pom for any gav, not only reactor
 * {%ajl MPH-109 %} - Use ISO 8601 date format for the remaining goals
 * {%ajl MPH-116 %} - Printout the information if a goal is a report goal or not
 * {%ajl MPH-120 %} - Migrate plugin to Maven 3.0
 * {%ajl MPH-124 %} - Show parameter aliases in describe goal

Tasks:

 * {%ajl MPH-103 %} - Remove unused dependency maven-monitor
 * {%ajl MPH-112 %} - Upgrade to Commons Lang3
 * {%ajl MPH-126 %} - Require Java 7
 * {%ajl MPH-132 %} - Drop parameter 'medium'
 * {%ajl MPH-133 %} - Drop deprecated alias 'full'
 * {%ajl MPH-134 %} - Drop deprecated alias 'mojo'

Dependency upgrades:

 * {%ajl MPH-102 %} - Upgrade to maven-plugins parent version 27
 * {%ajl MPH-104 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {%ajl MPH-117 %} - Upgrade plexus-utils to 3.0.22
 * {%ajl MPH-118 %} - Upgrade maven-plugins to version 30
 * {%ajl MPH-125 %} - Upgrade parent to 31
 * {%ajl MPH-127 %} - Upgrade Maven  Artifact Transfer to 0.9.1
 * {%ajl MPH-128 %} - Upgrade Maven Reporting Exec to 1.4
 * {%ajl MPH-129 %} - Upgrade Plexus Utils to 3.1.0
 * {%ajl MPH-130 %} - Upgrade XStream to 1.4.7
 * {%ajl MPH-131 %} - Ugprade Commons Lang to 3.7


Enjoy,

-The Apache Maven team

