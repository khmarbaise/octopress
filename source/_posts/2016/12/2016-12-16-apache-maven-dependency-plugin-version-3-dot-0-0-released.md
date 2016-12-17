---
layout: post
title: "Apache Maven Dependency Plugin Version 3.0.0 Released"
date: 2016-12-16 17:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependecy Plugin, version 3.0.0](http://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It
can copy and/or unpack artifacts from local or remote repositories to a
specified location.

https://maven.apache.org/plugins/maven-dependency-plugin/

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-dependency-plugin</artifactId>
    <version>3.0.0</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-dependency-plugin/download.cgi


<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317227&version=12330458)

Bugs:

 * {% ajl MDEP-410 %} - Add dependency:collect goal which prints the dependency list by resolving the POMs only
 * {% ajl MDEP-436 %} - German umlauts in outputDirectory and destFileName getting garbled
 * {% ajl MDEP-478 %} - dependency:copy-dependencies always overwrites if <prependGroupId> is true
 * {% ajl MDEP-483 %} - NullPointerException when using classifier and markers
 * {% ajl MDEP-486 %} - Upgrade plexus-utils to 3.0.22
 * {% ajl MDEP-506 %} - NPE in AnalyzeDepMgt.getMismatch
 * {% ajl MDEP-531 %} - MDP 2.10 depends on a known insecure library commons-collections:3.2.1
 * {% ajl MDEP-543 %} - Remove link to non-existing Codehaus wiki

Documentation:

 * {% ajl MDEP-546 %} - Update project information on plugin site

Improvements:

 * {% ajl MDEP-487 %} - Documentation cleanup
 * {% ajl MDEP-493 %} - Change Maven prerequisite and JDK requirement
 * {% ajl MDEP-494 %} - Remove/replace Maven2 specific code
 * {% ajl MDEP-495 %} - Remove deprecated parameters
 * {% ajl MDEP-511 %} - Upgrade maven-common-artifact-filters to 3.0.0
 * {% ajl MDEP-512 %} - Removed unused dependency to maven-invoker component.
 * {% ajl MDEP-517 %} - Upgrade plexus-archiver from 2.9 to 3.0.3
 * {% ajl MDEP-527 %} - Upgrade of 'plexus-archiver' to version 3.3.
 * {% ajl MDEP-530 %} - Upgrade mrm to 1.0.0
 * {% ajl MDEP-537 %} - Goal purge-local-repository requires a Maven project, even with manualIncludes
 * {% ajl MDEP-538 %} - Display moduleName
 * {% ajl MDEP-539 %} - Upgrade maven-shared-components parent to version 30

New Features:

 * {% ajl MDEP-509 %} - dependency:tree and :list should reveal 'optional'
 * {% ajl MDEP-514 %} - Add support for tar.snappy compression

Tasks:

 * {% ajl MDEP-529 %} - Upgrade of plexus-archiver to 3.4.
 * {% ajl MDEP-544 %} - Upgrade of plexus-interpolation to 1.24.

Enjoy,

-The Apache Maven team
