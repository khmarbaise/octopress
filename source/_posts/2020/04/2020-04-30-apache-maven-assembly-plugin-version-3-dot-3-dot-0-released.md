---
layout: post
title: "Apache Maven Assembly Plugin Version 3.3.0 Released"
date: 2020-04-30 23:15:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the [Apache
Maven Assembly Plugin, version 3.3.0](https://maven.apache.org/plugins/maven-assembly-plugin/).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-assembly-plugin/download.cgi).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>3.3.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Assembly Plugin - Version 3.3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317220&version=12344774)

* Bugs:

{%ajl MASSEMBLY-879 %} - useDefaultExcludes has no effect in dependencySet/unpack
{%ajl MASSEMBLY-920 %} - ContainerDescriptorHandler for MetaInf-Services breaks folder structure
{%ajl MASSEMBLY-932 %} - resource filtering skipped for resources in the current project

* New Features:

{%ajl MASSEMBLY-922 %} - allow to override UID/GID and user name and group name for files stored in TAR (and other formats that store UID/GID)
{%ajl MASSEMBLY-927 %} - Support for properties mapping on executions of maven-assembly-plugin
{%ajl MASSEMBLY-934 %} - Support concatenation of files

* Improvements:

{%ajl MASSEMBLY-765 %} - add property groupIdPath
{%ajl MASSEMBLY-849 %} - Add nonFilteredFileExtensions to avoid filtering of binary files
{%ajl MASSEMBLY-933 %} - make build Reproducible

* Dependency upgrade:

{%ajl MASSEMBLY-924 %} - Upgrade commons-compress to 1.19

Enjoy,

-The Apache Maven team
