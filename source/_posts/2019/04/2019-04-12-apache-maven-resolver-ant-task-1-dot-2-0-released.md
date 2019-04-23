---
layout: post
title: "Apache Maven Resolver Ant Task Version 1.2.0 Released"
date: 2019-04-12 17:31:22:02
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the [Maven 
Resolver Ant Tasks version 1.2.0](https://maven.apache.org/resolver-ant-tasks/).

The Maven Artifact Resolver Ant Tasks enable build scripts for Apache Ant 1.7+ to use Maven Artifact 
Resolver combined to Apache Maven Artifact Resolver Provider to resolve dependencies and install and 
deploy locally built artifacts.


You can download the appropriate sources etc. from 
the [download page](https://maven.apache.org/resolver-ant-tasks/download.cgi)

<!-- more -->

Bug:

- {%ajl MRESOLVER-83 %} - Classpath 'cp.runtime.test' in build.xml misses runtime dependencies

Task:

- {%ajl MRESOLVER-81 %} - Bump Java version to 7 in build.xml

Dependency upgrades:

- {%ajl MRESOLVER-70 %} - Upgrade Parent to 33
- {%ajl MRESOLVER-71 %} - Upgrade Maven Resolver from 1.1.1 (used by Maven 3.5.3) to 1.3.3 (used by Maven 3.6.1)
- {%ajl MRESOLVER-72 %} - Upgrade Ant to 1.8.4
- {%ajl MRESOLVER-73 %} - Upgrade Plexus Utils to 3.2.0
- {%ajl MRESOLVER-74 %} - Upgrade SLF4J to 1.7.25
- {%ajl MRESOLVER-75 %} - Upgrade Plexus Interpolation to 1.25
- {%ajl MRESOLVER-77 %} - Upgrade Sisu Plexus to 0.3.3
- {%ajl MRESOLVER-78 %} - Upgrade JUnit to 4.12
- {%ajl MRESOLVER-79 %} - Upgrade Maven Ant Run Plugin to 1.8

Enjoy,

-The Apache Maven team 