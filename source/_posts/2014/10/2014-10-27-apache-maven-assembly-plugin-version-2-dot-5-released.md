---
layout: post
title: "Apache Maven Assembly Plugin Version 2.5 Released"
date: 2014-10-27 07:46
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Assembly Plugin, version 2.5](http://maven.apache.org/plugins/maven-assembly-plugin).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

Notable in this release is improved file attribute support and full
symlink support for java7+ users. Users of filtering/line ending
selection should also notice a nice performance improvement.  A large
number of bugs have also been fixed.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.5</version>
</plugin>
```

<!-- more -->


[Release Notes - Maven Assembly Plugin - Version 2.5](http://jira.codehaus.org/secure/ReleaseNote.jspa?version=18952&styleName=Text&projectId=11126)

Bugs:

 * [MASSEMBLY-75] - Unpacked TAR dependencies do not preserve file
mode nor uid/gid
 * [MASSEMBLY-458] - Directory name resolution ignores "$" and beyond
 * [MASSEMBLY-495] - Assembly changes timestamps when extracting dependency sets
 * [MASSEMBLY-523] - Filtering causes a loss of original unix file permissions
 * [MASSEMBLY-543] - japanese filenames cannot be correctly assembled by maven-assembly-plugin
 * [MASSEMBLY-557] - Corrupted zip created by assembly: extracting the zip forgets certain folders (or throws permission denied errors) possibly because zip index is corrupted
 * [MASSEMBLY-563] - JAR entry not found when including jar dependencies with "#" in classname
 * [MASSEMBLY-576] - addClasspath broken in new single goal
 * [MASSEMBLY-605] - Filtering does not work on files which are symlinks
 * [MASSEMBLY-615] - assembly:single fails with odd resource file name
 * [MASSEMBLY-622] - Unable to create "TAR" artifacts
 * [MASSEMBLY-641] - Assembly fails on resource name with a percent character
 * [MASSEMBLY-661] - Assembly plugin looses permissions when using fileSets
 * [MASSEMBLY-670] - Specifying <lineEnding> option of <fileSet> causes timestamps not to be preserved
 * [MASSEMBLY-684] - Parallel Execution w Custom Assembly Descriptor Fails
 * [MASSEMBLY-692] - Assembly ID is global
 * [MASSEMBLY-709] - When assembling a zip on windows duplicate files are added to the assembly
 * [MASSEMBLY-721] - Failing ITs for Maven 2.2.1

Improvements:

 * [MASSEMBLY-479] - Add option to generate Posix tar files.
 * [MASSEMBLY-530] - Allow configuration of encoding
 * [MASSEMBLY-638] - [PATCH] Support tgz and tbz2 formats in assemblies
 * [MASSEMBLY-673] - Add support for "delimiters" and "useDefaultDelimiters" like the maven-resources-plugin 2.4 has
 * [MASSEMBLY-688] - Use maven-invoker-plugin 1.9
 * [MASSEMBLY-705] - Removed compatibility with Maven 2.0.X
 * [MASSEMBLY-706] - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * [MASSEMBLY-707] - Remove unnecessary excludes / Cleaning up console output
 * [MASSEMBLY-710] - Fix RAT Report
 * [MASSEMBLY-712] - Update version of plexus-archiver to 2.5
 * [MASSEMBLY-714] - Update version of plexus-archiver to 2.7.1
 * [MASSEMBLY-716] - Update plexus-io from 2.0.9 to 2.3.2
 * [MASSEMBLY-719] - Ugrade to plexus-interpolation 1.21

New Feature:

 * [MASSEMBLY-717] - Add an option to turn off project filters

Wish:

 * [MASSEMBLY-343] - add symbolic links managment (java7+ only supported)

Enjoy,

-The Apache Maven team
