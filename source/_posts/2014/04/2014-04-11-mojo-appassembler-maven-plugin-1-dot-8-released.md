---
layout: post
title: "Mojo Appassembler Maven Plugin 1.8 Released"
date: 2014-04-11 17:30
comments: true
categories: [Maven, News, Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo Team is pleased to announce the new release 
of the [Appassembler Maven Plugin 1.8](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
which contains a number of bug fixes, improvements and a new feature.

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
     <version>1.8</version>
</plugin>
```

<!-- more -->

[Release Notes](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=19848):

Improvement:

 * {% chjl MAPPASM-213 %} - Allow generation of logs directory and temp directory for an assembled app
 * {% chjl MAPPASM-219 %} - Documentation should be updated (Usage : Program)
 * {% chjl MAPPASM-224 %} - Make Plugin Java 5 Ready
 * {% chjl MAPPASM-226 %} - Add ability to rename the executable's prefix( ie wrapper)

New Feature:

 * {% chjl MAPPASM-201 %} - Add ability to filter the configuration directory

Task:

 * {% chjl MAPPASM-217 %} - Remove deprecated configurations - useAllDependencies, useAsterikClassPath, repoPath


The Mojo Team.

