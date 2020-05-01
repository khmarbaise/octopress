---
layout: post
title: "Apache Shared Component: Maven Artifact Transfer Version 0.11.0 Released"
date: 2019-02-28 22:31:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Artifact Transfer Version 0.11.0](https://maven.apache.org/shared/maven-artifact-transfer/)

An API to install, deploy and resolving artifacts with Maven3

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-artifact-transfer</artifactId>
  <version>0.11.0</version>
</dependency>
```

<!-- more -->

[Release Notes Apache Shared Componet Maven Artifact Transfer 0.11.0](https://issues.apache.org/jira/projects/MSHARED/versions/12338168)

Bugs:

 * {%ajl MSHARED-641 %} - NoSuchMethodException using DependencyResolver with Maven 3.0
 * {%ajl MSHARED-724 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0

Improvements:

 * {%ajl MSHARED-655 %} - ArtifactInstaller check for integrity of parameters null, empty collection, being a directory
 * {%ajl MSHARED-656 %} - Make integration testing for different Maven versions possible
 * {%ajl MSHARED-658 %} - ArtifactDeployer check for integrity of parameters null, empty collection, being a directory
 * {%ajl MSHARED-677 %} - Add null checks for ArtifactResolver interface.
 * {%ajl MSHARED-678 %} - Add null check for ProjectInstaller Interface
 * {%ajl MSHARED-679 %} - Make all classes package private in internal package
 * {%ajl MSHARED-695 %} - Move checksum creation from install part to deploy part
 * {%ajl MSHARED-696 %} - Add missing Maven Version 3.5.2 to ArtifactDeployerTest
 * {%ajl MSHARED-697 %} - Add Maven Version 3.5.3 to all Integration tests after releasing Maven 3.5.3
 * {%ajl MSHARED-701 %} - Remove installation of pom checksum - IT's do not fail
 * {%ajl MSHARED-705 %} - Remove updateReleaseInfo from ProjectInstallerRequest

Tasks:

 * {%ajl MSHARED-698 %} - Change the package to org.apache.maven.shared.transfer.*
 * {%ajl MSHARED-703 %} - Try to identify why IT's not running with Maven 3.0.5
 * {%ajl MSHARED-742 %} - Add null check for DependencyResolver Interface

Dependency upgrades:

 * {%ajl MSHARED-651 %} - Upgrade plexus-utils to version 3.1.0
 * {%ajl MSHARED-652 %} - Upgrade to maven-shade-plugin to version 3.0.0
 * {%ajl MSHARED-682 %} - Upgrade maven-shared-components parent to version 31
 * {%ajl MSHARED-693 %} - Upgrade JUnit from 4.11 to 4.12
 * {%ajl MSHARED-699 %} - Upgrade parent to 31 in IT example project
 * {%ajl MSHARED-737 %} - Upgrade mockito-core to 2.18.3 JDK 10 support
 * {%ajl MSHARED-741 %} - Upgrade commons-codec to 1.11

Enjoy,

-The Maven team

Karl-Heinz Marbaise
