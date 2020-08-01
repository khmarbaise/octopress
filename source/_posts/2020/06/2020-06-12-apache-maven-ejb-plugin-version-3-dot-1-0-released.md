®®---
layout: post
title: "Apache Maven EJB Plugin Version 3.1.0 Released"
date: 2020-06-12 23:45:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EJB Plugin Version 3.1.0](https://maven.apache.org/plugins/maven-ejb-plugin/).

This plugin generates J2EE Enterprise Javabean (EJB) file as well as the
associated client jar.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ejb-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven EJB Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317421&version=12343161)

* New Feature:

  * {%ajl MEJB-128 %} - Reproducible Builds: make entries in output jar files reproducible (order + timestamp)

* Improvements: 

  * {%ajl MEJB-126 %} - make build Reproducible
  * {%ajl MEJB-129 %} - Refactor IncludesExcludes to reduce code duplication

* Dependency upgrades

  * {%ajl MEJB-122 %} - Upgrade maven-plugins parent to version 32
  * {%ajl MEJB-123 %} - Upgrade plexus-interpolation to 1.25
  * {%ajl MEJB-124 %} - Upgrade plexus-archiver to 3.6.0
  * {%ajl MEJB-125 %} - Upgrade JUnit to 4.12

®Enjoy,

-The Apache Maven team
