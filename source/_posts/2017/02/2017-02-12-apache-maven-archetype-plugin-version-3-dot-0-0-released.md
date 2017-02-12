---
layout: post
title: "Apache Maven Archetype Plugin 3.0.0 Released"
date: 2017-02-12 19:30:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Archetype Plugin, version 3.0.0](http://maven.apache.org/archetype/maven-archetype-plugin/).

The Archetype Plugin allows the user to create a Maven project from an existing template called an archetype.
It also allows the user to create an archetype from an existing project.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-archetype-plugin/download.cgi).

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-archetype-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Archetype Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317122&version=12330297&styleName=Text).

Bugs:

 * {% ajl ARCHETYPE-283 %} - archetype:generate does not use <localRepository> in settings.xml when looking for archetype-catalog.xml
 * {% ajl ARCHETYPE-358 %} - Following mirror configuration from settings.xml
 * {% ajl ARCHETYPE-488 %} - Goal integration-test of maven-archetype-plugin fails with 'Cannot run additions goals." in version 3.3.1
 * {% ajl ARCHETYPE-499 %} - Files with no extension are not included when one creates archetype from project
 * {% ajl ARCHETYPE-501 %} - Bug generating project with blank property
 * {% ajl ARCHETYPE-502 %} - XMLOutputter generates files with inconsistent line ending on Windows
 * {% ajl ARCHETYPE-503 %} - Unit tests with archetype-post-generate.groovy fail on Windows
 * {% ajl ARCHETYPE-504 %} - Property excludePatterns is in required properties
 * {% ajl ARCHETYPE-509 %} - RequiredProperty not set in batch mode
 * {% ajl ARCHETYPE-510 %} - Achetype 1.0.x descriptor documentation is not generated any more
 * {% ajl ARCHETYPE-513 %} - Files in excludePatterns having a default filtered extension are still included
 * {% ajl ARCHETYPE-517 %} - Maven doesn't fail if invocation goals fail

Improvements:

 * {% ajl ARCHETYPE-204 %} - Add option to use remote repositories that are password protected
 * {% ajl ARCHETYPE-241 %} - Filtering of directory name same as filenames
 * {% ajl ARCHETYPE-438 %} - Remove support for specifying catalogs through direct URLs
 * {% ajl ARCHETYPE-439 %} - Remove archetypeRepository param
 * {% ajl ARCHETYPE-472 %} - Upgrade Apache Velocity Engine to 1.7
 * {% ajl ARCHETYPE-491 %} - Allow to run integration test with another archetype as parent project
 * {% ajl ARCHETYPE-496 %} - Allow user to specify archetype tests in project
 * {% ajl ARCHETYPE-514 %} - Tests fail with empty repository and 'mvn verify'
 * {% ajl ARCHETYPE-515 %} - Migrate plugin to Maven3

New Features:

 * {% ajl ARCHETYPE-487 %} - Input validation for required properties defined in artifact descriptor
 * {% ajl ARCHETYPE-494 %} - Provide a way to change the generated project after archetype:generate execution

Tasks:

 * {% ajl ARCHETYPE-433 %} - Remove unused archetype registry stuff
 * {% ajl ARCHETYPE-434 %} - Fix cyclic dependency between archetype-common and maven-archetype-plugin
 * {% ajl ARCHETYPE-437 %} - Remove support for the create goal

Enjoy,

-The Apache Maven team 
