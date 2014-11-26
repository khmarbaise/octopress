---
layout: post
title: "Mojo Appassembler Maven Plugin Version 1.9 Released"
date: 2014-11-26 20:15
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo Team is pleased to announce the new release 
of the [Appassembler Maven Plugin 1.9](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/).

The Application Assembler Plugin is a Maven plugin for generating
scripts for starting java applications.
All dependencies and the artifact of the project itself are placed in
a generated Maven repository in a defined assemble directory.
All artifacts (dependencies + the artifact from the project) are added
to the classpath in the generated bin scripts.

You can use the following Maven coordinates to get the latest version via Maven Central:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>appassembler-maven-plugin</artifactId>
  <version>1.9</version>
</plugin>
```

<!-- more -->

[Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=19848):

Bug:

 * {% chjl MAPPASM-238 %} - wrapperLogFile

Improvements:

 * {% chjl MAPPASM-239 %} - Update version of plexus-archiver to 2.5
 * {% chjl MAPPASM-240 %} - Update version of plexus-archiver to 2.6.3
 * {% chjl MAPPASM-241 %} - Upgrade plexus-utils to 3.0.20
 * {% chjl MAPPASM-242 %} - Upgrade to plexus-archiver 2.7.1
 * {% chjl MAPPASM-243 %} - Upgrade plexus-interpolation to 1.21
 * {% chjl MAPPASM-244 %} - Upgrade to mojo parent version 34
 * {% chjl MAPPASM-246 %} - Use maven-dependency-plugin version which is defined by the parent.
 * {% chjl MAPPASM-247 %} - Upgrade maven-filtering to 1.3
 * {% chjl MAPPASM-248 %} - Wrapper script fails on Solaris / SunOS 5.2 when the LC_TYPE is set to a non-single byte locale

Task:

 * {% chjl MAPPASM-236 %} - Removing plexus-container-default dependency

Enjoy,

The Mojo team.
