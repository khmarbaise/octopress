---
layout: post
title: "Apache Maven Shared JarSigner Version 1.4 Released"
date: 2015-01-21 21:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven JarSigner Version 1.4](http://maven.apache.org/shared/maven-jarsigner/).

This component provides some utilities to sign/verify jars/files in your Mojos.

You should specify the version in your project's plugin configuration:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-jarsigner</artifactId>
  <version>1.4</version>
</dependency>
```

<!-- more -->

[Release Notes - Maven JarSigner Version 1.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=19864)

Improvements:

 * {% chjl MSHARED-371 %} - Increase chance of java8 compliance by updating to plexus-component-* 1.6
 * {% chjl MSHARED-395 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MSHARED-397 %} - Upgrade maven-shared-utils to 0.7
 * {% chjl MSHARED-398 %} - Removed dependency plexus-container-default:1.0-alpha-9-stable-1

Enjoy,

-The Apache Maven team

Karl Heinz Marbaise
