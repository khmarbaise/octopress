---
layout: post
title: "Apache Maven Assembly Plugin Version 2.5.1 Released"
date: 2014-11-08 11:11
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Assembly Plugin, version 2.5.1](http://maven.apache.org/plugins/maven-assembly-plugin).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.5.1</version>
</plugin>
```

<!-- more -->


[Release Notes - Maven Assembly Plugin - Version 2.5.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11126&version=20729)

Bugs:

 * {% chjl MASSEMBLY-357 %} - transitive dependencies erroneously excluded from dependencySet in some cases
 * {% chjl MASSEMBLY-395 %} - Module dependencies not included
 * {% chjl MASSEMBLY-474 %} - Assembly is duplicating dependecies in the output
 * {% chjl MASSEMBLY-533 %} - Outputidrectory appended by dependencyset include name on filtered=true
 * {% chjl MASSEMBLY-554 %} - DependencySet unpackOptions 'filtered' causes unpack not to work
 * {% chjl MASSEMBLY-559 %} - useTransitiveDependencies leaks from one dependency set to another
 * {% chjl MASSEMBLY-571 %} - moduleSet dependencies processed incorrectly
 * {% chjl MASSEMBLY-577 %} - dependencySet inside moduleSet/binaries picks up dependencies of other dependencySets
 * {% chjl MASSEMBLY-579 %} - Dependency-filename appended as subdirectory of outputDirectory of dependencySet when unpackOptions/filtered = true
 * {% chjl MASSEMBLY-582 %} - Plugin omits transitive runtime dependencies where artifact is present with test-scope in current project
 * {% chjl MASSEMBLY-619 %} - Configurations of different <dependencySet>s influence each other
 * {% chjl MASSEMBLY-640 %} - Artifact data added to path when lineEnding tag set in dependencySet
 * {% chjl MASSEMBLY-672 %} - unpack adds the name of the artifact in case of filtered unpack
 * {% chjl MASSEMBLY-691 %} - dependencySet with filtered option has differents behaviors
 * {% chjl MASSEMBLY-701 %} - class AddDependencySetsTask doesn't re-unpack contents of unpacked SNAPSHOT artifacts
 * {% chjl MASSEMBLY-722 %} - Assembly with filters fails on Version 2.5 with NoSuchElementException and then IOException (This archives
contains unclosed entries) on clean up
 * {% chjl MASSEMBLY-727 %} - Implied dependencysets have incorrect outputfilemapping

Enjoy,

-The Apache Maven team
