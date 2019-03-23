---
layout: post
title: "Apache Maven Assembly Plugin Version 3.1.1 Released"
date: 2019-01-02 23:36:42
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Assembly Plugin, version 3.1.1](http://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

Note:

 * Maven 3.X only
 * JDK 7 miminum requirement.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-assembly-plugin/download.cgi).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>3.1.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317220&version=12341358)

Bugs:

 * {%ajl MASSEMBLY-675 %} - Maven Assembly packaging wildcard-excluded dependencies
 * {%ajl MASSEMBLY-762 %} - Assembly plugin doesn't exclude transitive dependencies when excluded by wildcards in dependencies section
 * {%ajl MASSEMBLY-799 %} - Exclusion on wildcard, then the assembly would still package to include the excluded libraries
 * {%ajl MASSEMBLY-861 %} - exclusion * also packaged
 * {%ajl MASSEMBLY-873 %} - Maven-Assembly-Plugin freezes when building jar-with-dependencies of project depending on org.bouncycastle:bcprov-jdk15on:1.58
 * {%ajl MASSEMBLY-893 %} - Typo in FAQ

Tasks:

 * {%ajl MASSEMBLY-885 %} - remove unused unpack code
 * {%ajl MASSEMBLY-898 %} - upgrade to plexus-io 3.1.1
 * {%ajl MASSEMBLY-899 %} - Make deprecated and non used of parameter useJvmChmod parameter (plugin is now 1.7)
 * {%ajl MASSEMBLY-901 %} - Fix trivial javadocs HTML errors
 * {%ajl MASSEMBLY-902 %} - Some Integration tests fails if launched with an very large UID

Dependency upgrades:

 * {%ajl MASSEMBLY-876 %} - Upgrade parent to 31
 * {%ajl MASSEMBLY-882 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {%ajl MASSEMBLY-884 %} - Upgrade plexus-archiver to 3.6.0
 * {%ajl MASSEMBLY-890 %} - Upgrade plexus-interpolation to 1.25
 * {%ajl MASSEMBLY-892 %} - Upgrade maven-plugins parent to version 33
 * {%ajl MASSEMBLY-900 %} - Upgrade plexus-archiver to 4.0.0

Enjoy,

-The Apache Maven team
