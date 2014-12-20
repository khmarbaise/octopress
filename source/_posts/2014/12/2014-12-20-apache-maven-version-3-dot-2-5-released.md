---
layout: post
title: "Apache Maven Version 3.2.5 Released"
date: 2014-12-20 12:06
comments: true
categories: [Neuigkeiten,Neue Versionen,BM,Maven,Maven-Release]
---
Hi!

The Apache Maven Team is pleased to announce the release of 3.2.5

The release notes can be found here:
http://maven.apache.org/docs/3.2.5/release-notes.html

The release can be downloaded from:
http://maven.apache.org/download.cgi

Full list of changes can be viewed in JIRA:
https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10500&version=20819

Bugs:

 * {% chjl MNG-5568 %} - ComparableVersion's breaks contract for Comparable, in some edgecases the comparisons are not transitive
 * {% chjl MNG-5592 %} - Maven Dependency Resolution Locks up
 * {% chjl MNG-5676 %} - mvn -U crashes with IBM JDK
 * {% chjl MNG-5686 %} - mvn cannot execute /usr/libexec/java_home/bin/java on OS X.
 * {% chjl MNG-5687 %} - Parallel Builds can build in wrong order
 * {% chjl MNG-5695 %} - inconsistent custom scope bindings
 * {% chjl MNG-5696 %} - Remove dependency on Easymock
 * {% chjl MNG-5700 %} - Update to plexus-interpolation 1.21 to avoid potential thread safety problems
 * {% chjl MNG-5707 %} - spell mistake, Log4JLoggerFactory should be Log4jLoggerFactory
 * {% chjl MNG-5711 %} - LinkageError org.apache.maven.surefire.shade.org.apache.maven.shared.utils.io.IOUtil
 * {% chjl MNG-5716 %} - ToolchainManagerPrivate.getToolchainsForType() returns toolchains that are not of expected type
 * {% chjl MNG-5723 %} - Maven downloads same artifact from all repositories defined in POM

Improvements:

 * {% chjl MNG-5712 %} - Improve toolchains descriptor documentation
 * {% chjl MNG-5713 %} - Improve Toolchains API description
 * {% chjl MNG-5717 %} - Enrich toolchain xml with merge information
 * {% chjl MNG-5718 %} - Change 'provides' from Object to Properties in toolchains.xml
 * {% chjl MNG-5724 %} - Upgrade to last Wagon 2.8

New Features:

 * {% chjl MNG-5714 %} - Add Merger for Maven Toolchain
 * {% chjl MNG-5730 %} - Provide a tool to test Maven version parsing and comparison

Tasks:

 * {% chjl MNG-5562 %} - Upgrade Aether 1.0 when available
 * {% chjl MNG-5715 %} - Upgrade JUnit (for tests only)

Wish:

 * {% chjl MNG-5719 %} - rename JavaToolChain to JavaToolchain for consistency and don't declare it as Plexus component

Thanks,

The Maven Team

