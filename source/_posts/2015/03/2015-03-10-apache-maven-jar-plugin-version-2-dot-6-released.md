---
layout: post
title: "Apache Maven Jar Plugin Version 2.6 Released"
date: 2015-03-10 11:35
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jar Plugin, version 2.6](http://maven.apache.org/plugins/maven-jar-plugin/).

This plugin provides the capability to build jars.


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jar-plugin</artifactId>
  <version>2.6</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JAR Plugin - Version 2.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11137&version=20457)

Bugs:

 * {% chjl MJAR-135 %} - encoding problem with folder-names
 * {% chjl MJAR-151 %} - Error assembling JAR on OS X
 * {% chjl MJAR-179 %} - Adding empty files to jar failed with a ZipException : bad CRC checksum
 * {% chjl MJAR-185 %} - Update version of plexus-archiver to 2.7.1
 * {% chjl MJAR-188 %} - maven-jar-plugin is very slow on machines with slow Unix group lookups
 * {% chjl MJAR-189 %} - Upgrade plexus-archiver dependency to v2.9

Improvements:

 * {% chjl MJAR-178 %} - Change information on site
 * {% chjl MJAR-180 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MJAR-181 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MJAR-182 %} - Update version of plexus-archiver to 2.6.3
 * {% chjl MJAR-184 %} - Update version of plexus-archiver to 2.7
 * {% chjl MJAR-186 %} - Upgrade maven-plugins-testing-harness from 1.2 to 1.3
 * {% chjl MJAR-187 %} - Upgrade maven-archiver to 2.6
 * {% chjl MJAR-190 %} - Upgrade to maven-plugins version 25 to 26
 * {% chjl MJAR-191 %} - Upgrade to maven-plugins parent version 27

Enjoy,

- The Apache Maven team
