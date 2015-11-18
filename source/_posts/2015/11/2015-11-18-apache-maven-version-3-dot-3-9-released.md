---
layout: post
title: "Apache Maven Version 3.3.9 Released"
date: 2015-11-18 18:47
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven 3.3.9](http://maven.apache.org/).

You can [download the appropriate sources etc. from the download page](http://maven.apache.org/download.cgi)

[Release Notes - Apache Maven Version 3.3.9](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12316922&version=12333074)

Code Contributors of this release:

 * Martin Schäf
 * Stuart McCulloch
 * sugartxy
 * Robert Stern 
 * Florencia Tarditti 
 * tssp
 * Dave Syer
 * Joseph Walton
 * Stephen Kitt
 * Anton Tanasenko
 * Tang Xinye
 * Ben Caradoc-Davies

Issue Reporters of this release:

 * Brandon Enochs
 * Martin Schäf
 * Stephan Schroevers
 * Christian Schlichtherle
 * Brandon Enochs
 * Anders Forsell
 * Shubham Chaurasia
 * Keith Turner
 * Jonathan Radon
 * Ben Caradoc-Davies

Many thanks to contributors and reporters for the support and time.

Participants to VOTE of the Maven 3.3.4 till the Maven 3.3.9 Release:

 * Francisco Collao Gárate
 * Anton Tanasenko
 * Mark Derricut
 * Eric Barboni
 * Jieren
 * Jörg Schaible
 * Gary Gregory
 * Mark Derricut

Many thanks to those who tested the Maven releases 
and thanks for their support as well.


Bugs:

 * {% ajl MNG-5297 %} -  Mark <prerequisites> as deprecated for compile-time enforcement. (Contributor: Joseph Walton)
 * {% ajl MNG-5649 %} -  Use Commons Lang's Validate to intercept invalid input
 * {% ajl MNG-5681 %} -  Properties on command line with leading or trailing quotes are stripped
 * {% ajl MNG-5721 %} -  Possible NullPointerException in org.apache.maven.repository.MetadataResolutionResult (reporter/contributor Martin Schäf ).
 * {% ajl MNG-5786 %} -  Variable maven.multiModuleProjectDirectory may be set incorrectly (reporter Stephan Schroevers).
 * {% ajl MNG-5787 %} -  Moving from Maven 3.0.5 to 3.3.3 breaks plugins with some dependencies on the class path (reporter Christian Schlichtherle).
 * {% ajl MNG-5796 %} -  mvn fails when the current directory is a root drive on Windows (reporter Brandon Enochs).
 * {% ajl MNG-5812 %} -  Project base dir not fully working in Cygwin (contributor tssp).
 * {% ajl MNG-5813 %} -  Make MAVEN_OPTS env variable with mvnDebug correctly
 * {% ajl MNG-5816 %} -  Empty maven.config cause Maven to exit with failure (contributor tssp)
 * {% ajl MNG-5840 %} -  <relativePath> is used if the groupId and artifactId match irrespective of the version
 * {% ajl MNG-5858 %} -  mvn script fails to locate .mvn in current directory (contributor Dave Syer).
 * {% ajl MNG-5877 %} -  maven-aether-provider/maven-compat does not always generate snapshot versions using Gregorian calendar year (contributor Joseph Walton; reporter Anders Forsell).
 * {% ajl MNG-5882 %} -  Nonportable shell constructs cause bin/mvn errors on Debian (contributor Ben Caradoc-Davies)
 * {% ajl MNG-5884 %} -  mvn script doesn't handle directories containing spaces (contributor Stephen Kitt).
 * {% ajl MNG-5886 %} -  Broken link of 'Building Maven' in README.md on Github (reporter Shubham Chaurasia).
 * {% ajl MNG-5891 %} -  Log file command line option description contains an extra word (reporter Keith Turner).
 * {% ajl MNG-5898 %} -  Multi-module build with ear fails to resolve war in 3.3.3 (reporter Jonathan Radon).
 * {% ajl MNG-5907 %} -  org.apache.maven.repository.internal.RemoteSnapshotMetadataTest fails to start at midnight

Improvements:

 * {% ajl MNG-5780 %} -  upgrade Java minimum version prerequisite from Java 6 to Java 7
 * {% ajl MNG-5805 %} -  Custom packaging types: configuring DefaultLifecycleMapping mojo executions (contributor Anton Tanasenko).
 * {% ajl MNG-5818 %} -  Disallow the programmatic injection of project dependencies
 * {% ajl MNG-5844 %} -  Close IO Streams in finally or try-with-resource statement (contributor Tang Xinye)
 * {% ajl MNG-5871 %} -  make url inheritance algorithm more visible
 * {% ajl MNG-5888 %} -  Update used modello version from 1.8.1 to 1.8.3
 * {% ajl MNG-5892 %} -  Removing par lifecycle from default life cycle bindings
 * {% ajl MNG-5893 %} -  Make used plugin version for maven-resources-plugin in default-bindings.xml consistent
 * {% ajl MNG-5894 %} -  Removed binding for maven-ejb3-plugin from default binding
 * {% ajl MNG-5905 %} -  Maven build does not work with Maven 2.2.1
 * {% ajl MNG-5906 %} -  Use canonical name for UTC timezone
 * {% ajl MNG-5911 %} -  Upgrade maven-parent to version 27
 * {% ajl MNG-5915 %} -  Upgrade Wagon version to 2.10
 * {% ajl MNG-5921 %} - Upgraded to plexus-components 1.6 that uses asm 5.x
 * {% ajl MNG-5922 %} -  Upgrade plexus-utils to 3.0.22 to support combine.id as configuration attribute for Map merging
 * {% ajl MNG-5923 %} -  Switch to official Guice 4.0 (reporter/contributor: Stuart McCulloch)
 * {% ajl MNG-5924 %} -  Upgrade to Eclipse/Sisu 0.3.2 (reporter/contributor: Stuart McCulloch).
 * {% ajl MNG-5925 %} -  Update animal-sniffer-maven-plugin to 1.14. MANIMALSNIFFER-49 required when building with JDK9

Task:

 * {% ajl MNG-5887 %} -  update Modello site url


Enjoy,

- The Apache Maven team
