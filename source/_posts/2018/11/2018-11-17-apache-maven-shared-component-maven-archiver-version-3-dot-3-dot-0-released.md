---
layout: post
title: "Apache Maven Shared Component - Maven Archiver Version 3.3.0 Released"
date: 2018-11-17 23:30:51
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Archiver, version 3.3.0](http://maven.apache.org/shared/maven-archiver/).

The Maven Archiver is mainly used by plugins to handle packaging. The version
numbers referenced in the Since column on this page are the version of the
Maven Archiver component - not for any specific plugin. To see which version of
Maven Archiver a plugin uses, go to the site for that plugin.

You should specify the version in your project's dependency configuration:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-archiver</artifactId>
  <version>3.3.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download-page].
 
 
Important Notes since Version 3.3.0:

 * Maven 3.X only
 * JDK 7 minimum requirement

<!-- more -->

[Release Notes - Maven Archiver - Version 3.3.0][release-notes]

Improvement:

 * [MSHARED-773] - Fail on invalid 'Automatic-Module-Name' in MANIFEST

Dependency upgrades:

 * [MSHARED-668] - plexus-utils 3.0.24 to 3.1.0
 * [MSHARED-669] - Upgrade plexus-interpolation to 1.24
 * [MSHARED-686] - Upgrade parent to 31
 * [MSHARED-721] - Upgrade maven-shared-utils to 3.2.1
 * [MSHARED-726] - Upgrade plexus-archiver to 3.6.0
 * [MSHARED-727] - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * [MSHARED-747] - Upgrade maven-plugins parent to version 32
 * [MSHARED-774] - Upgrade maven-plugins parent to version 33
 * [MSHARED-775] - Upgrade plexus-interpolation to 1.25
 
Enjoy,

-The Apache Maven team

[download-page]: https://maven.apache.org/shared/maven-archiver/download.cgi
[release-notes]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12341347
