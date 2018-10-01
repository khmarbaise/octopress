---
layout: post
title: "Apache Maven Install Plugin Version 3.0.0-M1 Released"
date: 2018-10-01 17:45:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Install Plugin, version 3.0.0-M1](https://maven.apache.org/plugins/maven-install-plugin/).

The Install Plugin is used during the install phase to add artifact(s) to the
local repository. The Install Plugin uses the information in the POM (groupId,
artifactId, version) to determine the proper location for the artifact within
the local repository.

Important Note since 3.0.0-M1:

 * Maven 3.X only
 * Minimum JDK 7+
 * The maven-install-plugin does not generate any kind of checksum 
   anymore. 

Usage Note:

 * Use the maven-install-plugin 3.0.0-M1 only in combination
   with the maven-deploy-plugin 3.0.0-M1.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-install-plugin</artifactId>
  <version>3.0.0-M1</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-install-plugin/download.cgi).
 
<!-- more -->

[Release Notes - Maven Install Plugin Version 3.0.0-M1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317524&version=12334343)

Bugs:

 * {%ajl MINSTALL-121 %} - The packaging property should not be used for the file extension
 * {%ajl MINSTALL-130 %} - Remove link to non-existing Codehaus wiki

Improvements:

 * {%ajl MINSTALL-110 %} - install-file should also install bundled pom.xml from artifact.
 * {%ajl MINSTALL-114 %} - Plugin shouldn't depend on maven-compat dependency
 * {%ajl MINSTALL-118 %} - MavenProject with only attachments must have packaging "pom"
 * {%ajl MINSTALL-124 %} - Remove hard code version for maven-invoker-plugin
 * {%ajl MINSTALL-128 %} - Replace usage of the deprecated ArtifactFactory
 * {%ajl MINSTALL-134 %} - Remove checksum generation
 * {%ajl MINSTALL-136 %} - Removed unused dependency
 * {%ajl MINSTALL-143 %} - Move checksum generation from install to deploy plugin

Tasks:

 * {%ajl MINSTALL-129 %} - Use released version of maven-artifact-transfer
 * {%ajl MINSTALL-131 %} - Rename package to org.apache.maven.plugins
 * {%ajl MINSTALL-145 %} - Remove unused dependencies in pom
 * {%ajl MINSTALL-148 %} - Document change about createChecksums
 * {%ajl MINSTALL-149 %} - Remove updateReleaseInfo parameter
 * {%ajl MINSTALL-150 %} - Lift JDK minimum to JDK 7

Dependency upgrades:

 * {%ajl MINSTALL-109 %} - Update version of plexus-utils to 3.0.18
 * {%ajl MINSTALL-111 %} - Upgrade to maven-plugins parent version 27
 * {%ajl MINSTALL-112 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {%ajl MINSTALL-113 %} - Upgrade maven-shared-utils to 0.7
 * {%ajl MINSTALL-117 %} - Upgrade maven-shared-utils to 3.0.0
 * {%ajl MINSTALL-122 %} - Upgrade maven-shared-components parent to version 30
 * {%ajl MINSTALL-123 %} - Upgrade maven-shared-utils to 3.0.1
 * {%ajl MINSTALL-125 %} - Upgrade of commons-io to 2.5.
 * {%ajl MINSTALL-127 %} - Upgrade maven-shared-utils to 3.1.0
 * {%ajl MINSTALL-137 %} - Upgrade maven-artifact-transfer to version 0.9.1
 * {%ajl MINSTALL-140 %} - maven-shared-utils 3.1.0 to 3.2.0
 * {%ajl MINSTALL-141 %} - plexus-utils 3.0.24 to 3.1.0
 * {%ajl MINSTALL-142 %} - Upgrade parent to 31
 * {%ajl MINSTALL-144 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {%ajl MINSTALL-146 %} - Upgrade maven-plugin parent to version 32
 * {%ajl MINSTALL-147 %} - Upgrade JUnit to 4.12

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
