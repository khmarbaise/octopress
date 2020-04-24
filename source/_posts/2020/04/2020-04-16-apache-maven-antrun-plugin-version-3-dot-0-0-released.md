---
layout: post
title: "Apache Maven AntRun Plugin Version 3.0.0 Released"
date: 2020-04-15 23:47:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven AntRun Plugin, version 3.0.0](http://maven.apache.org/plugins/maven-antrun-plugin/).

This plugin provides the ability to run Ant tasks from within Maven. You can even embed your Ant 
scripts in the POM!

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-antrun-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the [appropriate sources etc. from the download page][download-page]

<!-- more -->

 
[Release Notes - Maven AntRunPlugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317921&version=12346981)


* Bugs:

    * {%ajl MANTRUN-172 %} - Properties passed to Maven as -D don't get passed to <ant> invocations when a profile sets the same property
    * {%ajl MANTRUN-178 %} - Ignore precedence of mvn command line over property defined in <properties> section
    * {%ajl MANTRUN-179 %} - Seems impossible to use combine.* attributes with maven-antrun-plugin configuration
    * {%ajl MANTRUN-181 %} - AttachArtifact task does not work in external Ant build file
    * {%ajl MANTRUN-192 %} - filterArtifacts in DependencyFilesetsTask includes entire maven.local.repository
    * {%ajl MANTRUN-204 %} - antrun loops the backing map of java.util.Properties withouth checking type safety
    * {%ajl MANTRUN-205 %} - maven-antrun-plugin pages at maven.apache.org still have bad url codehaus references
    * {%ajl MANTRUN-221 %} - Fails to pass maven properties set in user properties only

* Improvements:

    * {%ajl MANTRUN-201 %} - Migrate plugin to Maven 3.0
    * {%ajl MANTRUN-202 %} - Fail the build when deprecated parameters tasks, sourceRoot or testSourceRoot are used
    * {%ajl MANTRUN-217 %} - Require Java 7
    * {%ajl MANTRUN-222 %} - make build Reproducible, upgrade maven-plugins pom to 34

* Tasks:

    * {%ajl MANTRUN-209 %} - Add documentation information for GitHub
    * {%ajl MANTRUN-211 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0

* Dependency upgrades:

    * {%ajl MANTRUN-203 %} - Upgrade to maven-plugins 30
    * {%ajl MANTRUN-210 %} - Upgrade parent to 31
    * {%ajl MANTRUN-212 %} - Upgrade plexus-utils 3.1.0
    * {%ajl MANTRUN-213 %} - Upgrade plexus-utils 3.1.0
    * {%ajl MANTRUN-214 %} - upgrade default Ant version to 1.9.14
    * {%ajl MANTRUN-215 %} - Upgrade maven-plugins parent to version 32
    * {%ajl MANTRUN-218 %} - Upgrade JUnit to 4.13
    * {%ajl MANTRUN-219 %} - Upgrade XMLUnit to 2.6.4 (test dependency)
    
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
