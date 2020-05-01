---
layout: post
title: "Apache Maven Jarsigner Version 3.0.0 Released"
date: 2018-10-31 20:58:10
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Jarsigner, version 3.0.0](https://maven.apache.org/shared/maven-jarsigner/).

This component provides some utilities to sign/verify jars/files in your Mojos.

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/shared/maven-jarsigner/download.cgi).

You should specify the component in your pom file like this:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-jarsigner</artifactId>
  <version>3.0.0</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven Shared Component - Maven Jarsigner - Version 3.0.0](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11990&version=19865).

Bug:

 * {%ajl MSHARED-654 %} - Add support of the "certchain" parameter in JarSigner sign operation

Improvements:

 * {%ajl MSHARED-507 %} - Upgrade maven-shared-components parent to version 22
 * {%ajl MSHARED-508 %} - Upgrade maven-shared-utils to 3.0.0
 * {%ajl MSHARED-510 %} - Add missing apache-rat-plugin configuration for keystore
 * {%ajl MSHARED-530 %} - Upgrade maven-shared-components parent to version 30
 * {%ajl MSHARED-764 %} - Upgrade to JDK 1.7

Tasks:

 * {%ajl MSHARED-509 %} - Upgrade Maven 3.X Only JDK 1.6
 * {%ajl MSHARED-626 %} - Upgrade of 'maven-shared-utils' to 3.2.0.

Dependency upgrades:

 * {%ajl MSHARED-736 %} - Upgrade parent to 31
 * {%ajl MSHARED-739 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {%ajl MSHARED-745 %} - Upgrade maven-shared-utils to 3.2.1
 * {%ajl MSHARED-746 %} - Upgrade junit to junit 4.12

Enjoy,

- The Apache Maven team
