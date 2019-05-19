---
layout: post
title: "Apache Maven Source Plugin Version 3.1.0 Released"
date: 2019-05-19 21:10:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, Version 3.1.0][home].

The Source Plugin creates a jar archive of the source files of the current
project. The jar file is, by default, created in the project's target
directory.

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

<!-- more -->

[Release Notes - Apache Maven Source Version 3.1.0][release]

Bugs:

 * {% ajl MSOURCES-105 %} - Remove link to non-existing Codehaus wiki
 * {% ajl MSOURCES-108 %} - Remove the readonly=true from finalName
 * {% ajl MSOURCES-119 %} - Archiving to jar is very slow

Improvement:

 * {% ajl MSOURCES-110 %} - Add IT to prevent readonly=true problem with parameter

Dependency upgrades:

 * {% ajl MSOURCES-109 %} - Upgrade parent to 31
 * {% ajl MSOURCES-111 %} - Upgrade maven-archiver / plexus-archiver
 * {% ajl MSOURCES-112 %} - Upgrade plexus-utils 3.1.0
 * {% ajl MSOURCES-114 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {% ajl MSOURCES-116 %} - Upgrade plexus-archiver to 3.6.0
 * {% ajl MSOURCES-117 %} - Upgrade maven-plugins parent to version 32
 * {% ajl MSOURCES-118 %} - Upgrade JUnit to 4.12


Enjoy,

-The Apache Maven team

Karl Heinz Marbaise

[download]: https://maven.apache.org/plugins/maven-source-plugin/download.html
[home]: https://maven.apache.org/plugins/maven-source-plugin/
[release]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317924&version=12336941
