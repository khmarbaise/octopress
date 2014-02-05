---
layout: post
title: "Apache Maven Shared Jarsigner Version 1.3 Released"
date: 2014-01-03 13:08
comments: true
categories: [News,BM,Maven,Maven-Plugins,Maven-Plugin-Releases,Maven-Shared]
---
The Maven team is pleased to announce the release of 
the [Apache Maven Shared Jarsigner](http://maven.apache.org/shared/maven-jarsigner/)

This component provides some utilities to sign/verify jars/files in your Mojos.

To use the Maven Jarsigner, add the following dependency to your project:

``` xml
<dependency>
 <groupId>org.apache.maven.shared</groupId>
 <artifactId>maven-jarsigner</artifactId>
 <version>1.3</version>
</dependency>
```

[Release Notes - Maven Shared Components - Version maven-jarsigner-1.3](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11761&version=19857&styleName=Html)

Fixed Bug:

 * {% chjl MSHARED-314 %} - Unsigning a jar is not correct

Enjoy,

-The Maven team
