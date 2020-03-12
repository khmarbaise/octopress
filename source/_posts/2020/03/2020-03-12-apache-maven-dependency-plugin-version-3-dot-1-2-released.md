---
layout: post
title: "Apache Maven Dependency Plugin Version 3.1.2 Released"
date: 2020-03-12 21:30:45
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependecy Plugin, version 3.1.2](http://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It
can copy and/or unpack artifacts from local or remote repositories to a
specified location.

https://maven.apache.org/plugins/maven-dependency-plugin/

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-dependency-plugin</artifactId>
    <version>3.1.2</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-dependency-plugin/download.cgi


<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 3.1.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317227&version=12343772)

* Bugs:

  * {%ajl MDEP-204 %} - go-offline fails to resolve artifact available in maven reactor
  * {%ajl MDEP-545 %} - Several classes create mixed-style line endings
  * {%ajl MDEP-579 %} - Regression: get goal does not pass server credentials to BasicRepositoryConnector
  * {%ajl MDEP-613 %} - Analyze failed: Unsupported class file major version 55 (Java 11)
  * {%ajl MDEP-655 %} - The unpack integration test fails intermittent.
  * {%ajl MDEP-663 %} - Analyze failed: Unsupported class file major version 57 (Java 13)
  
* New Feature:

  * {%ajl MDEP-628 %} - Unpacking File Mappers

* Improvements:

  * {%ajl MDEP-653 %} - add info message to purge-local-repository goal even in non-verbose mode
  * {%ajl MDEP-664 %} - Get goal misses unit tests
  * {%ajl MDEP-672 %} - make build Reproducible

* Dependency upgrades:

  * {%ajl MDEP-624 %} - Upgrade maven-plugins parent to version 32
  * {%ajl MDEP-625 %} - Upgrade maven-artifact-transfer to 0.11.0
  * {%ajl MDEP-626 %} - Upgrade struts and xerces due to CVEs
  * {%ajl MDEP-634 %} - Upgrade plexus-io to 3.1.0
  * {%ajl MDEP-635 %} - Upgrade dependency-analyzer 1.11.0
  * {%ajl MDEP-636 %} - Upgrade maven-shared-utils 3.2.1
  * {%ajl MDEP-637 %} - Upgrade dependency-analyzer 1.11.0
  * {%ajl MDEP-641 %} - Upgrade plexus-archiver to 4.1.0
  * {%ajl MDEP-642 %} - Upgrade plexus-utils to 3.2.0
  * {%ajl MDEP-647 %} - Upgrade maven-common-artifact-filters to 3.1.0
  * {%ajl MDEP-656 %} - Upgrade plexus-utils to 3.3.0
  * {%ajl MDEP-668 %} - Upgrade plexus-interpolation 1.26
  * {%ajl MDEP-673 %} - Upgrade asm to 7.3.1

Enjoy,

-The Apache Maven team
