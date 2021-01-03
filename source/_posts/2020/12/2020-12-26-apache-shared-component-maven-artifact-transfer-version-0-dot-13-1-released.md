---
layout: post
title: "Apache Shared Component: Maven Artifact Transfer Version 0.13.1 Released"
date: 2020-12-26 19:35:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Artifact Transfer Version 0.13.1](https://maven.apache.org/shared/maven-artifact-transfer/)

An API to install, deploy and resolving artifacts with Maven3

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-artifact-transfer</artifactId>
  <version>0.13.1</version>
</dependency>
```

<!-- more -->

[Release Notes Apache Shared Componet Maven Artifact Transfer 0.13.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12348387)

* Bugs:

  * {%ajl MSHARED-863 %} - Possible NPEx in Maven30DependencyResolver.resolveDependencies
  * {%ajl MSHARED-874 %} - NPE with maven-dependency-plugin
  * {%ajl MSHARED-913 %} - Missing component annotations for maven3 and maven31 dependency collectors
  * {%ajl MSHARED-920 %} - NPE in DefaultArtifactInstaller.install - missing injection of RepositoryManager

* New Feature:

  * {%ajl MSHARED-843 %} - Provide artifacts in CollectorResult when collectDependencies

* Improvements:

  * {%ajl MSHARED-864 %} - Refactor and simplify code
  * {%ajl MSHARED-865 %} - Line up all IT's with Maven versions
  * {%ajl MSHARED-869 %} - Reduce duplication in DefaultDependencyCollector-s
  * {%ajl MSHARED-875 %} - Remove enforcer for bytecode enforcement
  * {%ajl MSHARED-879 %} - make build Reproducible
  * {%ajl MSHARED-889 %} - Remove explicit version for maven-shade-plugin
  * {%ajl MSHARED-922 %} - Remove checksum creation from DefaultProjectDeployer

* Tasks:

  * {%ajl MSHARED-877 %} - Remove hard coded version for maven-invoker-plugin
  * {%ajl MSHARED-878 %} - Add automatic module name

* Dependency upgrades:

  * {%ajl MSHARED-845 %} - Upgrade plexus-utils 3.3.0
  * {%ajl MSHARED-846 %} - Upgrade commons-codec - 1.13
  * {%ajl MSHARED-857 %} - Upgrade commons-codec 1.14
  * {%ajl MSHARED-858 %} - Upgrade maven-shared-component parent to 34
  * {%ajl MSHARED-859 %} - Upgrade maven-common-artifact-filters 3.1.0
  * {%ajl MSHARED-876 %} - Upgrade in IT all maven-plugin parents to version 34
  * {%ajl MSHARED-883 %} - Upgrade groovy from 2.4.10 to 3.0.3 for maven-invoker-plugin

Enjoy,

-The Maven team

Karl-Heinz Marbaise
