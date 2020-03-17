---
layout: post
title: "Apache Maven JavaDoc Plugin Version 3.2.0 Released"
date: 2020-03-17 09:30:38
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 3.2.0](https://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the
specified project. 


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>3.2.0</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-javadoc-plugin/download.cgi

<!-- more -->

[Release Notes - Apache Maven JavaDoc Plugin - Version 3.2.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317529&version=12345698)

* Bugs:

  * {%ajl MJAVADOC-607 %} - followLinks fix to get redirect target breaks for certain sites
  * {%ajl MJAVADOC-609 %} - Include jars for which module name cannot be determined on the classpath
  * {%ajl MJAVADOC-612 %} - UnsupportedOperationException for javadoc:aggregate with multi modules with jpms
  * {%ajl MJAVADOC-616 %} - JavadocReportTest.testOptionsUmlautEncoding fails on Windows with default ecnoding that does not support umlauts
  * {%ajl MJAVADOC-620 %} - Maven Javadoc Plugin fails to resolve the dependencies when used with Java 11
  * {%ajl MJAVADOC-639 %} - aggregate should use all requires static from maven modules

* New Feature:

  * {%ajl MJAVADOC-627 %} - Reproducible Builds: make entries in output jar files reproducible (order + timestamp)

* Improvements:

  * {%ajl MJAVADOC-613 %} - Exclude some modules with aggregate goals
  * {%ajl MJAVADOC-626 %} - Detect stale files and skip generation if not needed
  * {%ajl MJAVADOC-632 %} - agggregate using jpms and non jar module is failing
  * {%ajl MJAVADOC-636 %} - Exclude some modules when building aggregate
  * {%ajl MJAVADOC-637 %} - make build Reproducible
  * {%ajl MJAVADOC-640 %} - Ability to exclude maven modules from javadoc aggregate goals

* Dependency upgrades:

  * {%ajl MJAVADOC-635 %} - upgrade plexus-java 1.0.4
  * {%ajl MJAVADOC-638 %} - upgrade Doxia Sitetools to 1.9.2 to remove dependency on Struts

Enjoy,

-The Apache Maven team 
