---
layout: post
title: "Apache Maven ACR Plugin Version 1.1 Released"
date: 2014-09-06 12:55
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven ACR Plugin, Version 1.1](http://maven.apache.org/plugins/maven-acr-plugin).

This plugin generates J2EE Application Client file.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-acr-plugin</artifactId>
  <version>1.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven ACR Version 1.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=12123&version=17274)

Bug:

 * {% chjl MACR-5 %} - Usage page is wrong: Maven 3.0.4 does not include ACR plugin

Tasks:

 * {% chjl MACR-6 %} - use maven-plugin-tools' java 5 annotations
 * {% chjl MACR-7 %} - Removed warnings during build
 * {% chjl MACR-9 %} - Upgrade plexus-archiver to 2.4.4
 * {% chjl MACR-10 %} - Upgrade maven-filtering to 1.2
 

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
