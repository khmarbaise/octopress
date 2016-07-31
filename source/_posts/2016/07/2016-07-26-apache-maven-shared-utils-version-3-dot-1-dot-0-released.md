---
layout: post
title: "Apache Maven Shared Utils Version 3.1.0 Released"
date: 2016-07-26 11:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Shared Utils, version 3.1.0](https://maven.apache.org/shared/maven-shared-utils/).

The release contains a number of bug fixes.

You should specify the version in your project's dependencies configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-shared-utils</artifactId>
  <version>3.1.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Shared Utils - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12335944)


Bugs:

 * [MSHARED-563] - Directory traversal in org.apache.maven.shared.utils.Expand
 * [MSHARED-564] - Exceptions thrown on closing resources should not be suppressed silently.

Improvement:

 * [MSHARED-548] - Inherit Site Configuration

New Feature:

 * [MSHARED-562] - add an API to create messages with consistent and configurable colors

Task:

 * [MSHARED-565] - Upgrade of commons-io to 2.5.

Wish:

 * [MSHARED-567] - remove dependency on Maven core

Enjoy,

-The Apache Maven team
