---
layout: post
title: "Apache Maven WAR Plugin Version 3.1.0 Released"
date: 2017-04-29 16:15:20
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven WAR Plugin, version 3.1.0](http://maven.apache.org/plugins/maven-war-plugin/).

The WAR Plugin is responsible for collecting all artifact dependencies, classes
and resources of the web application and packaging them into a web application
archive.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-war-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


<!-- more -->

[Release Notes - Maven WAR Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318121&version=12331760)


Bugs:

 * {% ajl MWAR-257 %} - - Restore dependentWarExcludes/Includes since there is no alternative on global level
 * {% ajl MWAR-398 %} - - Upgrade of plexus-interpolation to 1.24 to correct escaping issue.
 * {% ajl MWAR-400 %} - - Upgrade the WAR lifecycle to use the maven-resources-plugin 3.0.2
 * {% ajl MWAR-404 %} - - <filteringDeploymentDescriptors>true</> is not honored
 * {% ajl MWAR-405 %} - - Workaround XStream incompatibility with Java9

New Feature:

 * {% ajl MWAR-396 %} - - Check the existence of the web.xml based on the existence of particular classes

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-war-plugin/download.cgi

