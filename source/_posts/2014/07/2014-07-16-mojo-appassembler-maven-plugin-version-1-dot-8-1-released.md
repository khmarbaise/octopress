---
layout: post
title: "Mojo Appassembler Maven Plugin Version 1.8.1 - Released"
date: 2014-07-16 19:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi,

The Mojo team is pleased to announce the release of the 
[Appassembler Maven Plugin Version 1.8.1](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)

The Application Assembler Plugin is a Maven plugin for generating scripts for
starting java applications. All dependencies and the artifact of the project
itself are placed in a generated Maven repository in a defined assemble
directory. All artifacts (dependencies + the artifact from the project) are
added to the classpath in the generated bin scripts.

To get this update, simply specify the version in your project's plugin configuration: 

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>appassembler-maven-plugin</artifactId>
  <version>1.8.1</version>
</plugin>
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=20322)

Bugs:

 * {% chjl MAPPASM-121 %} - Generated script should be set executable (or allow for a umask to be defined).
 * {% chjl MAPPASM-228] - [Daemon *nix template %} Params of tr command must be quoted
 * {% chjl MAPPASM-234 %} - Make unix scripts executable, but not world-writable, i.e. 0755 (on unix)

Improvements:

 * {% chjl MAPPASM-230 %} - Failed to create directory for log/temp files
 * {% chjl MAPPASM-233 %} - Change integration tests according to maven-invoker-plugin 1.9 (mavenVersion) in verify.groovy

Wish:

 * {% chjl MAPPASM-54 %} - make unix scripts executable (on unix)


Enjoy,

The Mojo team.

Karl-Heinz Marbaise
