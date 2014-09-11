---
layout: post
title: "Apache Maven RAR Plugin Version 2.4 Released"
date: 2014-09-11 22:32
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven RAR Plugin, Version 2.4](http://maven.apache.org/plugins/maven-rar-plugin).

A resource adapter is a system-level software driver that a Java application
uses to connect to an enterprise information system (EIS). The RAR plugin has
the capability to store these resource adapters to an archive (Resource Adapter
Archive or RAR) which can be deployed to a J2EE server.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-rar-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven RAR Version 2.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11143&version=18707)


Improvements:

 * {% chjl MRAR-28 %} - Add Support for Classifier
 * {% chjl MRAR-35 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MRAR-37 %} - Upgrade maven-filtering to 1.2
 * {% chjl MRAR-38 %} - Upgrade to Maven 2.2.1 compatiblity

New Feature:

 * {% chjl MRAR-34 %} - provide "skip" parameter for the plugin

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
