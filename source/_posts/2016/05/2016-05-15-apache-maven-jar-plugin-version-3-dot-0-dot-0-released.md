---
layout: post
title: "Apache Maven Jar Plugin Version 3.0.0 Released"
date: 2016-05-15 21:25
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 3.0.0](http://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 3.0.0](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11137&version=20457)

Bugs:

 * {% ajl MJAR-177 %} - Empty string should be treated as default classifier
 * {% ajl MJAR-198 %} - jar:jar without classifier replaces default jar
 * {% ajl MJAR-204 %} - Adding plexus-utils version 3.0.22
 * {% ajl MJAR-205 %} - Compatibility with JDK9 requires an update of plexus-archiver
 * {% ajl MJAR-216 %} - Documentation for skip param in test-jar goal is wrong

Documentation:

 * {% ajl MJAR-197 %} - Typo in site navigation

Improvements:

 * {% ajl MJAR-183 %} - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * {% ajl MJAR-194 %} - Upgrade plexus-archiver to 2.10
 * {% ajl MJAR-199 %} - Option "classifier" to goal test-jar
 * {% ajl MJAR-201 %} - Upgrade Maven 3.X Only JDK 1.6
 * {% ajl MJAR-202 %} - Bump version to 3.0.0-SNAPSHOT
 * {% ajl MJAR-203 %} - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * {% ajl MJAR-207 %} - Upgrade plexus-archiver from 3.0.3 to 3.1
 * {% ajl MJAR-208 %} - Make naming of properties consistent
 * {% ajl MJAR-209 %} - Remove param properties that doesn't make sense for CLI usage
 * {% ajl MJAR-210 %} - Remove useDefaultManifestFile parameter
 * {% ajl MJAR-214 %} - Replace @pom.version@ with @project.version@ in Integration Tests
 * {% ajl MJAR-215 %} - Upgrade plexus-archiver from 3.1 to 3.1.1 in synch with maven-archiver 3.0.1
 * {% ajl MJAR-217 %} - Make finalName readonly parameter

Tasks:

 * {% ajl MJAR-213 %} - Upgrade to maven-archiver 3.0.1
 * {% ajl MJAR-218 %} - Upgrade to maven-archiver 3.0.2 to fix regression

Reporters of this Release:

 * Sanne Grinovero {% ajl MJAR-205 %}
 * Leo Breuss {% ajl MJAR-199 %}
 * Elias Elmqvist Wulcan {% ajl MJAR-198 %}
 * Andreas Kohn {% ajl MJAR-197 %}
 * Stefan Fussenegger {% ajl MJAR-177 %}

Tester of this Release:

 * Stian Soiland-Reyes 

Many thanks to all reporters/contributors/testers of this release.

Enjoy,

- The Apache Maven team
