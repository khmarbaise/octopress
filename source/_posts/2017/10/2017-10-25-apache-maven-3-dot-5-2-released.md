---
layout: post
title: "Apache Maven 3.5.2 Released"
date: 2017-10-25 12:34
comments: true
categories: [BM,Maven,Maven Best Practice]
---
The Apache Maven team is pleased to announce the release of the Apache
Maven 3.5.2

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/download.cgi).


Contributors
============
The Apache Maven team would like to thank the following contributors,
without whom this release would not have been possible:

Code contributors:

- Mario Krizmanic
- Dejan Stojadinovic
- Anton Tanasenko
- Stefan Eicher

Issue reporters:

- Marcel Schutte
- Mario Krizmanic
- Charles Gould
- Brian Oxley
- Anton Tanasenko
- Gregor B. Rosenauer
- Sylwester Lachiewicz
- Stefan Eicher
- Manuel Ryan

Community testers participating in voting for this release series:

- Mark Derricutt
- Dejan Stojadinovic
- Thomas Collignon
- Grzegorz Grzybek
- Petar Tahchiev
- jieryn
- Petr Široký

Thank you for your time and feedback.


[Release Notes - Maven - Version 3.5.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12316922&version=12338964)

<!-- more -->

Sub-tasks:

 * {% ajl MNG-6186 %} - switch to improved HawtJNI
 * {% ajl MNG-6280 %} - ArrayIndexOutOfBoundsException caused by pom.xml with process instructions

Bugs:

 * {% ajl MNG-5935 %} - Optional true getting lost in managed dependencies when transitive
 * {% ajl MNG-6127 %} - Fix plugin execution configuration interference
 * {% ajl MNG-6148 %} - Can't package and assemble with JDK9/Jigsaw
 * {% ajl MNG-6149 %} - MetadataResolutionResult#getGraph() never resolves request type 'test'
 * {% ajl MNG-6205 %} - Non-ascii chars in name element are displayed as question marks in Win CLI output (regression)
 * {% ajl MNG-6210 %} - can't load @SessionScoped/@MojoExecutionScoped components from .mvn/extensions.xml
 * {% ajl MNG-6223 %} - mvn -f outputs invalid error when specifying POM directory
 * {% ajl MNG-6233 %} - maven-resolver-provider mixes JRS 330 and Plexus annotations
 * {% ajl MNG-6234 %} - Regression 6182a208: library.jansi.path does not point to proper directory
 * {% ajl MNG-6240 %} - Duplicate components in plugin extension realm when plugin depends on maven-aether-resolver
 * {% ajl MNG-6242 %} - No color for maven on Cygwin

Improvements:

 * {% ajl MNG-5457 %} - Show repository id when downloading or uploading from/to a remote repository
 * {% ajl MNG-6025 %} - Add a ProjectArtifactsCache similar to PluginArtifactsCache
 * {% ajl MNG-6123 %} - detect self references in POM and fail fast
 * {% ajl MNG-6174 %} - Clean Up Maven Model
 * {% ajl MNG-6196 %} - Update slf4j and simplify its color integration
 * {% ajl MNG-6203 %} - Minor cleanup in MavenCli.java
 * {% ajl MNG-6206 %} - We should produce a WARNING by using RELEASE, LATEST as versions
 * {% ajl MNG-6207 %} - Create WARNINGs in case of using system scope
 * {% ajl MNG-6228 %} - Optionality not displayed in dependency tree when run in debug mode

New Features:

 * {% ajl MNG-6084 %} - Support JSR 250 annotations
 * {% ajl MNG-6220 %} - Add CLI options to control color output

Tasks:

 * {% ajl MNG-6167 %} - Clean up dependency mess (reported by dependency:analyze)
 * {% ajl MNG-6258 %} - Upgrade to Maven Resolver 1.1.0

Enjoy,

-The Apache Maven team
