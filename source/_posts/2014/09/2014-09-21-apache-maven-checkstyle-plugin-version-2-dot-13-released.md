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

 * {% chjl MCHECKSTYLE-126 %} - Generated HTML page contains "charset=${outputEncoding}"
 * {% chjl MCHECKSTYLE-214 %} - Resources retrieval ignores resources definition in <build>
 * {% chjl MCHECKSTYLE-225 %} - headerLocation no longer sets checkstyle.header.file
 * {% chjl MCHECKSTYLE-230 %} - ConcurrentModificationException in FileResourceLoader.getResource
 * {% chjl MCHECKSTYLE-237 %} - Changeset 1608113 introduces "Line 0" regression
 * {% chjl MCHECKSTYLE-238 %} - ConcurrentModificationException
 * {% chjl MCHECKSTYLE-244 %} - LicenseResourceManager component is not thread safe and causes parallel build failures

Improvements:

 * {% chjl MCHECKSTYLE-70 %} - Support for multiple source folders
 * {% chjl MCHECKSTYLE-148 %} - Would be nice to see the name of CHECK together with its output
 * {% chjl MCHECKSTYLE-215 %} - Abandon sourceDirectory and testSourceDirectory for MavenProject#getCompileSourceRoots
 * {% chjl MCHECKSTYLE-217 %} - Add parameter which skips rule rows which do not have any violations
 * {% chjl MCHECKSTYLE-232 %} - add the version of Checkstyle to the generated report
 * {% chjl MCHECKSTYLE-233 %} - link to rules documentation
 * {% chjl MCHECKSTYLE-234 %} - group rules by category
 * {% chjl MCHECKSTYLE-235 %} - improve difference between rules with and without violations
 * {% chjl MCHECKSTYLE-236 %} - add Rule name to violation message

New Feature:

 * {% chjl MCHECKSTYLE-242 %} - fine grained ignore of violations

Task:

 * {% chjl MCHECKSTYLE-248 %} - Remove RegexBasedInterpolator and ValueSource

Wishes:

 * {% chjl MCHECKSTYLE-239 %} - remove Translation rule from Maven checks
 * {% chjl MCHECKSTYLE-240 %} - add 17, 31 and 37 to ignored MagicNumber
 * {% chjl MCHECKSTYLE-241 %} - add SuppressWarningsFilter (introduced in Checkstyle 5.7) to support @SuppressWarnings
 * {% chjl MCHECKSTYLE-243 %} - log check violations to console by default
 * {% chjl MCHECKSTYLE-246 %} - add UniqueProperties rule (introduced in Checkstyle 5.7)
 * {% chjl MCHECKSTYLE-247 %} - add CHECKSTYLE_OFF/ON: regexp support (SuppressionCommentFilter)

Enjoy,

-The Apache Maven team
