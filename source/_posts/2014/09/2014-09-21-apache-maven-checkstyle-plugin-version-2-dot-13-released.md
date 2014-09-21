---
layout: post
title: "Apache Maven Checkstyle Plugin Version 2.13 Released"
date: 2014-09-21 21:41
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Checkstyle Plugin, version 2.13](http://maven.apache.org/plugins/maven-checkstyle-plugin/).

This plugin generates a report regarding the code style used by the 
developers.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-checkstyle-plugin</artifactId>
  <version>2.13</version>
</plugin>
```

<!-- more -->

Release Notes - Maven Checkstyle Plugin - Version 2.13

Bugs:

 * [MCHECKSTYLE-126] - Generated HTML page contains "charset=${outputEncoding}"
 * [MCHECKSTYLE-214] - Resources retrieval ignores resources definition in <build>
 * [MCHECKSTYLE-225] - headerLocation no longer sets checkstyle.header.file
 * [MCHECKSTYLE-230] - ConcurrentModificationException in FileResourceLoader.getResource
 * [MCHECKSTYLE-237] - Changeset 1608113 introduces "Line 0" regression
 * [MCHECKSTYLE-238] - ConcurrentModificationException
 * [MCHECKSTYLE-244] - LicenseResourceManager component is not thread safe and causes parallel build failures

Improvements:

 * [MCHECKSTYLE-70] - Support for multiple source folders
 * [MCHECKSTYLE-148] - Would be nice to see the name of CHECK together with its output
 * [MCHECKSTYLE-215] - Abandon sourceDirectory and testSourceDirectory for MavenProject#getCompileSourceRoots
 * [MCHECKSTYLE-217] - Add parameter which skips rule rows which do not have any violations
 * [MCHECKSTYLE-232] - add the version of Checkstyle to the generated report
 * [MCHECKSTYLE-233] - link to rules documentation
 * [MCHECKSTYLE-234] - group rules by category
 * [MCHECKSTYLE-235] - improve difference between rules with and without violations
 * [MCHECKSTYLE-236] - add Rule name to violation message

New Feature:

 * [MCHECKSTYLE-242] - fine grained ignore of violations

Task:

 * [MCHECKSTYLE-248] - Remove RegexBasedInterpolator and ValueSource

Wishes:

 * [MCHECKSTYLE-239] - remove Translation rule from Maven checks
 * [MCHECKSTYLE-240] - add 17, 31 and 37 to ignored MagicNumber
 * [MCHECKSTYLE-241] - add SuppressWarningsFilter (introduced in Checkstyle 5.7) to support @SuppressWarnings
 * [MCHECKSTYLE-243] - log check violations to console by default
 * [MCHECKSTYLE-246] - add UniqueProperties rule (introduced in Checkstyle 5.7)
 * [MCHECKSTYLE-247] - add CHECKSTYLE_OFF/ON: regexp support (SuppressionCommentFilter)

Enjoy,

-The Apache Maven team
