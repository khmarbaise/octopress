---
layout: post
title: "Apache Maven Assembly Plugin Version 2.5.4 Released"
date: 2015-04-27 20:53
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Assembly Plugin, version 2.5.4](http://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

This release is mostly a bugfix release, but due to MASSEMBLY-764 we
also gained multithreaded ZIP compression, which should especially
benefit users with large zip files.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.5.4</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 2.5.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317220&version=12330363)

Bugs:

 * [MASSEMBLY-742] - Unclosed ZipFile warnings when ZIP archives are included
 * [MASSEMBLY-746] - Warnings about platform dependent paths inconsistent.
 * [MASSEMBLY-747] - StackOverflowError when building assembly
 * [MASSEMBLY-748] - problem to extract zip files including file names with umlauts
 * [MASSEMBLY-750] - descriptor in "dir" format changes symbolic links in non symlink files
 * [MASSEMBLY-753] - LineEnding CR to LF conversion output is wrong : All EOL are removed
 * [MASSEMBLY-754] - Non existing folder produces NPE
 * [MASSEMBLY-755] - missing whitespace in log message

Improvement:

 * [MASSEMBLY-764] - Upgrade to plexus-archiver 2.10 and io 2.5

Enjoy,

- The Apache Maven team
