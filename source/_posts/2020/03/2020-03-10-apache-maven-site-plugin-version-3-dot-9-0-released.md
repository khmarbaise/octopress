---
layout: post
title: "Apache Maven Site Plugin Version 3.9.0 Released"
date: 2020-03-10 21:30:27
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.9.0](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.9.0</version>
</plugin>   
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.9.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12345725)

* Bugs:

  * {%ajl MSITE-847 %} - "$prerequisiteMavenVersion" text in plugin's documentation
  * {%ajl MSITE-853 %} - Upgrade Doxia to 1.9.1 to have Markdown `code` and ``` support

* New Feature:

  * {%ajl MSITE-851 %} - Reproducible Builds: make entries in output jar files reproducible (order + timestamp)

* Improvements:

  * {%ajl MSITE-852 %} - Upgrade Doxia Site Renderer to 1.9.2 to remove Struts dependencies
  * {%ajl MSITE-855 %} - make build Reproducible

Enjoy,

-The Apache Maven team
