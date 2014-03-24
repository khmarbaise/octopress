---
layout: post
title: "Apache Maven Shared JarSigner 1.3.2 - Released"
date: 2014-03-24 09:06
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Maven team is pleased to announce the release of the 
[Apache Maven Jarsigner,  version 1.3.2](http://maven.apache.org/shared/maven-jarsigner/).

This component provides some utilities to sign/verify jars/files in your Mojos.

To use the Maven Jarsigner, add the following dependency to your project:

``` xml
<dependency>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-jarsigner</artifactId>
  <version>1.3.2</version>
</dependency>
``` xml

<!-- more -->

Release Notes - Maven Shared Components - Version maven-jarsigner-1.3.2

Bug:

 * {% chjl MSHARED-316 %} - Can not pass storetype nor storepass to a verify request

Improvement:

 * {% chjl MSHARED-321 %} - Mask passwords in logs

Task:

 * {% chjl MSHARED-322 %} - Use maven-shared-utils 0.6

Enjoy,

-The Maven team
