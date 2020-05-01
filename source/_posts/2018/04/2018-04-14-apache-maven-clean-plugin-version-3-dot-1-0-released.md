---
layout: post
title: "Apache Maven Clean Plugin Version 3.1.0 Released"
date: 2018-04-14 15:00:35
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Clean Plugin, version 3.1.0](https://maven.apache.org/plugins/maven-clean-plugin/).

The Clean Plugin is used when you want to remove files generated at build-time
in a project's directory.

Important Note:

 * Maven 3.X only
 * JDK 7 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-clean-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Clean Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317224&version=12337984)

Bug:

 * {%ajl MCLEAN-77 %} - Remove link to non-existing Codehaus wiki

Tasks:

 * {%ajl MCLEAN-73 %} - Upgrade of maven-shared-utils to 3.0.1.
 * {%ajl MCLEAN-74 %} - Upgrade of commons-io to 2.5.
 * {%ajl MCLEAN-83 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {%ajl MCLEAN-84 %} - Lift JDK minimum to JDK 7

Dependency upgrades:

 * {%ajl MCLEAN-75 %} - Upgrade maven-plugins to version 30
 * {%ajl MCLEAN-80 %} - Upgrade maven-shared-utils to 3.2.0
 * {%ajl MCLEAN-81 %} - Upgrade parent to 31
 * {%ajl MCLEAN-85 %} - Upgrade maven-shared-utils to 3.2.1


Enjoy,

-The Apache Maven team
