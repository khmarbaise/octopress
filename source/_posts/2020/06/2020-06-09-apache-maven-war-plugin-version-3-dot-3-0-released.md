---
layout: post
title: "Apache Maven WAR Plugin Version 3.3.0 Released"
date: 2020-06-09 15:31:03
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.3.0](https://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.3.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement


<!-- more -->


[Release Notes - Maven WAR Plugin - Version 3.3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12345578)

* Bugs:

  * {%ajl MWAR-314 %} - failOnMissingWebXml ignored when webXml set
  * {%ajl MWAR-427 %} - WAR plugin includes the same artifact twice if used without clean
  * {%ajl MWAR-429 %} - Failed to execute goal org.apache.maven.plugins:maven-war-plugin:3.2.3:exploded (pre-exploded-war) on project alfresco-platform

* New Feature:

  * {%ajl MWAR-432 %} - Reproducible Builds: make entries in output jar files reproducible (order + timestamp)

* Improvements:

  * {%ajl MWAR-375 %} - Remove the useCache with its implementation
  * {%ajl MWAR-397 %} - Replace XStream with Modello to merge overlays
  * {%ajl MWAR-430 %} - support JakartaEE namespace: remove or adapt hardcoded reference to javax.servlet package
  * {%ajl MWAR-431 %} - make build Reproducible

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi
