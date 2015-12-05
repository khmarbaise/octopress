---
layout: post
title: "Apache Maven Project Info Reports Plugin Version 2.8 Released"
date: 2015-01-11 14:11
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin, version 2.8.](http://maven.apache.org/plugins/maven-project-info-reports-plugin/).

This module generates browsable HTML pages from Java source code.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>>maven-project-info-reports-plugin</artifactId>
  <version>2.8</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Project Info Reports Plugin - Version 2.8](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317821&version=12331184):

Sub-task:

 * {% ajl MPIR-321 %} - Disable/remove dev/contrib current time generation because it is broken


Bugs:

 * {% ajl MPIR-242 %} - Incorrect translations list for GPL v3 (illegible letters for Catalan and Arabic)
 * {% ajl MPIR-247 %} - "Comparison method violates its general contract!" while generating site
 * {% ajl MPIR-273 %} - links to modules broken in modules.html of flat multimodule parent project
 * {% ajl MPIR-279 %} - Wrong hyperlinks on index and modules page
 * {% ajl MPIR-280 %} - Clarify that Web Access SCM link is not suitable for SCM checkout
 * {% ajl MPIR-281 %} - Misleading SCM report title
 * {% ajl MPIR-289 %} - DependenciesRenderer's FileDecimalFormat claims to use SI prefixes but calculated numbers do not match
 * {% ajl MPIR-293 %} - On the team list report the "picUrl" property appears in the table, although no other properties are set for that team member
 * {% ajl MPIR-301 %} - Update plexus-interpolation to 1.21 to avoid thread safety issues
 * {% ajl MPIR-303 %} - Backslash in multi-module project
 * {% ajl MPIR-309 %} - The Integration test mpir-229 breaks on Apache Jenkins
 * {% ajl MPIR-311 %} - Specific SCM intro is missing if dev connection is given but not anonymous connection
 * {% ajl MPIR-313 %} - License name is mandatory but it is not validated
 * {% ajl MPIR-319 %} - Apache Ant has no dependency management but Apache Ivy has
 * {% ajl MPIR-325 %} - JIRA report is not generated



Improvements:

 * {% ajl MPIR-263 %} - improve minimum java requirement when m-compiler-p not explicitely configured: use default properties
 * {% ajl MPIR-265 %} - Improve debug information in Dependencies report
 * {% ajl MPIR-287 %} - Misleading report titles in Project Information overview
 * {% ajl MPIR-290 %} - improve git support: remove directory info (after '.git') for "git clone"
 * {% ajl MPIR-291 %} - if scm tag is present, propose "git clone --branch <tag>"
 * {% ajl MPIR-295 %} - Enhancements on dependency convergence report
 * {% ajl MPIR-296 %} - SBT Output not correct for dependencies
 * {% ajl MPIR-298 %} - Continuous Integration support for Travis CI
 * {% ajl MPIR-299 %} - Update to SCM 1.9.1
 * {% ajl MPIR-304 %} - Update dependencies to the most recent usable versions
 * {% ajl MPIR-305 %} - Upgrade Doxia + Site Tools to 1.6
 * {% ajl MPIR-306 %} - Upgrade to maven-plugins version 25 to 26
 * {% ajl MPIR-310 %} - Improve 'JDK Rev' label in dependencies report
 * {% ajl MPIR-314 %} - Upgrade to maven-plugins version 26 to 27
 * {% ajl MPIR-315 %} - Replace org.apache.maven.shared:maven-doxia-tools with org.apache.maven.doxia:doxia-integration-tools
 * {% ajl MPIR-316 %} - Removed dependency org.codehaus.plexus:plexus-container-default:1.0-alpha-9
 * {% ajl MPIR-322 %} - Dependencies Files Details should reuse installed jars instead of target/classes
 * {% ajl MPIR-326 %} - Remove notes to ancient version of this plugin or the Site Plugin in the apt files

New Features:

 * {% ajl MPIR-288 %} - Add a skipEmptyReport option
 * {% ajl MPIR-297 %} - add a skip parameter


Tasks:

 * {% ajl MPIR-317 %} - Remove FAQ entry for Recaptcha Mailhide
 * {% ajl MPIR-318 %} - Link time zone FAQ entry to the POM reference documentation
 * {% ajl MPIR-324 %} - Clean up unused and used undeclared dependencies


Enjoy,

-The Apache Maven team 
