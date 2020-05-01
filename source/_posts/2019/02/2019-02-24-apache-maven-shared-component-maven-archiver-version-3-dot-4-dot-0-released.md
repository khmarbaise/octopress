---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 3.4.0 Released"
date: 2019-02-24 23:34:53
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.4.0](https://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.4.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
<!-- more -->

[Release Notes - Maven Archiver - Version 3.4.0][release-notes]

Bugs:

 * {%ajl MSHARED-588 %} - User supplied Class-Path entry does not go first
 * {%ajl MSHARED-782 %} - Deprecated option classpathMavenRepositoryLayout not marked as deprecated in the documentation
 * {%ajl MSHARED-783 %} - Archiver documentation issue tracker 404

New Features:

 * {%ajl MSHARED-787 %} - Add optional buildEnvironment information to the manifest
 * {%ajl MSHARED-798 %} - Add addDefaultEntries option (true by default)

Improvements:

 * {%ajl MSHARED-362 %} - Support removing default manifest entries with Maven Archiver
 * {%ajl MSHARED-777 %} - Remove deprecated main attributes from generated manifest
 * {%ajl MSHARED-799 %} - Change "Created-By" manifest entry value to be reproducible
 * {%ajl MSHARED-800 %} - Remove Maven version from pom.properties

Wishes:

 * {%ajl MSHARED-661 %} - Remove manifest entry "Built-By: <username>" for reproducible builds
 * {%ajl MSHARED-796 %} - use java.specification.version instead of java.version in Build-Jdk manifest entry

Task:

 * {%ajl MSHARED-797 %} - Move current Build-Jdk manifest entry to Build-Jdk-Spec

Dependency upgrade:

 * {%ajl MSHARED-781 %} - Upgrade to Plexus Archiver 4.1.0

 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12344607
