---
layout: post
title: "Apache Maven Clean Plugin Version 3.0.0 Released"
date: 2015-10-23 15:40:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Clean Plugin, version 3.0.0](http://maven.apache.org/plugins/maven-clean-plugin/).

The Clean Plugin is used when you want to remove files generated at build-time
in a project's directory.

Important Note:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-clean-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Clean Plugin - Version 3.0.0](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11128&version=20685)

Improvements:

 * {% ajl MCLEAN-56 %} -  Make Plugin only 3.X compatible - get rid of Maven 2.
 * {% ajl MCLEAN-62 %} -  Upgrade to maven-plugins parent version 27
 * {% ajl MCLEAN-63 %} -  Make naming of properties consistent
 * {% ajl MCLEAN-65 %} -  Bump version to 3.0.0
 * {% ajl MCLEAN-66 %} -  Upgrade maven-shared-utils to 0.9
 * {% ajl MCLEAN-67 %} -  Change package name to org.apache.maven.plugins
 * {% ajl MCLEAN-69 %} -  Upgrade maven-shared-utils to 3.0.0


Enjoy,

-The Apache Maven team
