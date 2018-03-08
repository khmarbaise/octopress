---
layout: post
title: "Apache Maven 3.5.3 Released"
date: 2018-03-08 16:45:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the Apache
Maven 3.5.3

You can download the appropriate sources etc. from the download page

Contributors
============
The Apache Maven team would like to thank the following contributors,
without whom this release would not have been possible:

Code contributors:

- Sylwester Lachiewicz
- Bengt Söderberg
- Robin Müller
- Romain Manni-Bucau

Issue reporters:

- Ryan Heaton
- Ryan J McDonough
- Andreas Kurth
- Ben Caradoc-Davies
- Romain Manni-Bucau
- Robin Müller
- Dejan Stojadinović
- Andrew Kennedy
- Sylwester Lachiewicz
- Andy Wilkinson
- Eugene Pliskin
- Tony Guan

Community testers participating in voting for this release:

- Sylwester Lachiewicz
- Grzegorz Grzybek

Thank you for your time and feedback.

Release Notes - Maven - Version 3.5.3

**Known issue:**

 * {%ajl MNG-6372 %} - On Windows with -T option, Maven can output spurious ANSI escapes such as [0m [0m

Bugs:

 * {%ajl MNG-6188 %} - Console color not properly reset when interrupting build process
 * {%ajl MNG-6255 %} - Maven script cannot parse jvm.config with CRLF
 * {%ajl MNG-6282 %} - Console output has no colors in shell (both Git Bash and Cygwin) [regression in Jansi 1.16 / Maven 3.5.1]
 * {%ajl MNG-6296 %} - New option -Dstyle.color is not working
 * {%ajl MNG-6298 %} - 3.5.2: ClassNotFoundException: javax.annotation.security.  RolesAllowed
 * {%ajl MNG-6300 %} - Multi module release creates empty directories in war file instead of jars
 * {%ajl MNG-6305 %} - Validation of CI friendly version incorrect
 * {%ajl MNG-6320 %} - Apparently wrong encoding of non-ascii java class filename in error messages in the maven log
 * {%ajl MNG-6323 %} - Deadlock in multithreaded dependency resolution
 * {%ajl MNG-6330 %} - [regression] Parents relativePath not verified anymore

New Feature:

 * {%ajl MNG-6302 %} - Provide some "progress" hints

Improvement:
 * {%ajl MNG-5992 %} - Git passwords are exposed as the Super POM still uses Maven Release Plugin 2.3.2
 * {%ajl MNG-6306 %} - Replace use of Guava in maven-resolver-provider with a lighter weight alternative
 * {%ajl MNG-6308 %} - display packaging & groupId:artifactId when building a module
 * {%ajl MNG-6332 %} - Cleaned up mvn.cmd Script
 * {%ajl MNG-6340 %} - [Performance]To make System.gc() call configurable in target summary code
 * {%ajl MNG-6342 %} - Emit a WARNING about LATEST/RELEASE in parent
 * {%ajl MNG-6352 %} - Printout version information at the end of the build

Task:
 * {%ajl MNG-6331 %} - Remove maven-bundle-pugin from build pluginManagement

Dependency upgrade:
 * {%ajl MNG-6312 %} - Update Maven Wagon dependency
 * {%ajl MNG-6335 %} - Update test framework Mockito from 1.10 to 2.12
 * {%ajl MNG-6353 %} - Upgrade maven-shared-utils to 3.2.1

Enjoy,

-The Apache Maven team
