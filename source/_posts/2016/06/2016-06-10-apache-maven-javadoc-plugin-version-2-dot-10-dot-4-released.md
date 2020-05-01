---
layout: post
title: "Apache Maven JavaDoc Plugin Version 2.10.4 Released"
date: 2016-06-10 22:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 2.10.4](https://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the
specified project. 

Please be aware of the new location of our issue tracker
which has been moved from Codehaus to [Apache Software Foundation](https://issues.apache.org/jira/browse/MJAVADOC).

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>2.10.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven JavaDoc Plugin - Version 2.10.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317529&version=12331967)


Bugs:

 * {% ajl MJAVADOC-404 %} - Goal resource-bundle generates faulty JAR file
 * {% ajl MJAVADOC-423 %} - Wrong link generation for org.xml.sax.helpers.DefaultHandler
 * {% ajl MJAVADOC-431 %} - Allow Javadoc Jar to contain Maven descriptor
 * {% ajl MJAVADOC-437 %} - javadoc:aggregate fails on initial build
 * {% ajl MJAVADOC-441 %} - javadoc plugin fails with recent jdk9-ea builds

Documentation:

 * {% ajl MJAVADOC-385 %} - Fix documentation of <additionalDependencies> feature

Improvements:

 * {% ajl MJAVADOC-384 %} - Allow whitespace in javadoc exclude list
 * {% ajl MJAVADOC-442 %} - Support new jdk9 java version scheme
 * {% ajl MJAVADOC-446 %} - Upgrade plexus-archiver from 3.0.3 to 3.1
 * {% ajl MJAVADOC-454 %} - Upgrade of 'plexus-archiver' to version 3.3.
 * {% ajl MJAVADOC-455 %} - Change IT whitelist to blacklist

Wish:

 * {% ajl MJAVADOC-432 %} - Downgrade "Error fetching link: .../package-list"



Enjoy,

-The Apache Maven team
