---
layout: post
title: "Apache Maven 3.5.4 Released"
date: 2018-06-22 11:45:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the Apache
Maven 3.5.4.

Apache Maven is a software project management and comprehension tool. Based
on the concept of a project object model (POM), Maven can manage a
project's build, reporting and documentation from a central piece of
information.

You can find out more about Apache Maven at https://maven.apache.org

You can download the appropriate sources etc. from the download page:
https://maven.apache.org/download.cgi

<!-- more -->

Contributors
============
The Apache Maven value community before code and so firstly the team would
like to thank the following contributors, without whom this release would
not have been possible:

Code contributors:

- https://github.com/eis
- Florian Brunner
- Łukasz Dywicki
- Sylwester Lachiewicz

Issue reporters:

- Falko Modler
- Jarkko Rantavuori
- Łukasz Dywicki
- Mike Kelly
- Sylwester Lachiewicz

Community testers participating in voting for this release:

- Dejan Stojadinovic
- Enrico Olivelli
- Romain Manni-Bucau

Thank you all for your time and feedback (and apologies if we have missed
anyone)

Release Notes - Maven - Version 3.5.4
=====================================

Bugs:

 * {%ajl MNG-6370 %} - ConcurrencyDependencyGraph#getNumberOfBuilds() does not remove finished projects from unfinished ones
 * {%ajl MNG-6372 %} - On Windows Maven can output spurious ANSI escapes such as [0m [0m
 * {%ajl MNG-6382 %} - JANSI fails frequently with NumberFormatException when building in parallel
 * {%ajl MNG-6386 %} - ${project.baseUri} is not a valid URI (according to RFC 3986)
 * {%ajl MNG-6388 %} - Error Fetching Artifacts: "[B cannot be cast to java.lang.String"
 * {%ajl MNG-6403 %} - Artifact#VERSION_FILE_PATTERN does not escape period between date and time
 * {%ajl MNG-6410 %} - Add groupId to --resume-from suggestion if artifactId is not unique in reactor

Improvements:

 * {%ajl MNG-5756 %} - Java home output in mvn -v is misleading
 * {%ajl MNG-5940 %} - Change the maven-source-plugin jar goal into jar-no-fork in Maven Super POM
 * {%ajl MNG-6362 %} - Add documentation information for GitHub
 * {%ajl MNG-6363 %} - Remove secret thread configuration property from code
 * {%ajl MNG-6364 %} - Enhanced Jenkinsfile to test Core with JDK 9
 * {%ajl MNG-6411 %} - Improve readability of project list returned when --resume-from option value is invalid

Task:

 * {%ajl MNG-6377 %} - switch from Git-WIP to Gitbox

Dependency upgrades:

 * {%ajl MNG-6344 %} - Upgrade Guice to 4.2.0
 * {%ajl MNG-6423 %} - Upgrade to Wagon 3.1.0

Share and Enjoy,

-The Apache Maven team

