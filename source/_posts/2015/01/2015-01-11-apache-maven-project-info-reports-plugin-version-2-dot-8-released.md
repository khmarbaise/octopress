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

[Release Notes - Maven Project Info Reports Plugin - Version 2.8](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11142&version=19232):

Sub-task:

 * {% chjl MPIR-321 %} - Disable/remove dev/contrib current time generation because it is broken


Bugs:

 * {% chjl MPIR-242 %} - Incorrect translations list for GPL v3 (illegible letters for Catalan and Arabic)
 * {% chjl MPIR-247 %} - "Comparison method violates its general contract!" while generating site
 * {% chjl MPIR-273 %} - links to modules broken in modules.html of flat multimodule parent project
 * {% chjl MPIR-279 %} - Wrong hyperlinks on index and modules page
 * {% chjl MPIR-280 %} - Clarify that Web Access SCM link is not suitable for SCM checkout
 * {% chjl MPIR-281 %} - Misleading SCM report title
 * {% chjl MPIR-289 %} - DependenciesRenderer's FileDecimalFormat claims to use SI prefixes but calculated numbers do not match
 * {% chjl MPIR-293 %} - On the team list report the "picUrl" property appears in the table, although no other properties are set for that team member
 * {% chjl MPIR-301 %} - Update plexus-interpolation to 1.21 to avoid thread safety issues
 * {% chjl MPIR-303 %} - Backslash in multi-module project
 * {% chjl MPIR-309 %} - The Integration test mpir-229 breaks on Apache Jenkins
 * {% chjl MPIR-311 %} - Specific SCM intro is missing if dev connection is given but not anonymous connection
 * {% chjl MPIR-313 %} - License name is mandatory but it is not validated
 * {% chjl MPIR-319 %} - Apache Ant has no dependency management but Apache Ivy has
 * {% chjl MPIR-325 %} - JIRA report is not generated



Improvements:

 * {% chjl MPIR-263 %} - improve minimum java requirement when m-compiler-p not explicitely configured: use default properties
 * {% chjl MPIR-265 %} - Improve debug information in Dependencies report
 * {% chjl MPIR-287 %} - Misleading report titles in Project Information overview
 * {% chjl MPIR-290 %} - improve git support: remove directory info (after '.git') for "git clone"
 * {% chjl MPIR-291 %} - if scm tag is present, propose "git clone --branch <tag>"
 * {% chjl MPIR-295 %} - Enhancements on dependency convergence report
 * {% chjl MPIR-296 %} - SBT Output not correct for dependencies
 * {% chjl MPIR-298 %} - Continuous Integration support for Travis CI
 * {% chjl MPIR-299 %} - Update to SCM 1.9.1
 * {% chjl MPIR-304 %} - Update dependencies to the most recent usable versions
 * {% chjl MPIR-305 %} - Upgrade Doxia + Site Tools to 1.6
 * {% chjl MPIR-306 %} - Upgrade to maven-plugins version 25 to 26
 * {% chjl MPIR-310 %} - Improve 'JDK Rev' label in dependencies report
 * {% chjl MPIR-314 %} - Upgrade to maven-plugins version 26 to 27
 * {% chjl MPIR-315 %} - Replace org.apache.maven.shared:maven-doxia-tools with org.apache.maven.doxia:doxia-integration-tools
 * {% chjl MPIR-316 %} - Removed dependency org.codehaus.plexus:plexus-container-default:1.0-alpha-9
 * {% chjl MPIR-322 %} - Dependencies Files Details should reuse installed jars instead of target/classes
 * {% chjl MPIR-326 %} - Remove notes to ancient version of this plugin or the Site Plugin in the apt files

New Features:

 * {% chjl MPIR-288 %} - Add a skipEmptyReport option
 * {% chjl MPIR-297 %} - add a skip parameter


Tasks:

 * {% chjl MPIR-317 %} - Remove FAQ entry for Recaptcha Mailhide
 * {% chjl MPIR-318 %} - Link time zone FAQ entry to the POM reference documentation
 * {% chjl MPIR-324 %} - Clean up unused and used undeclared dependencies


Enjoy,

-The Apache Maven team 
