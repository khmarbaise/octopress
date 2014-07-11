---
layout: post
title: "Apache Maven Site Plugin Version 3.4 Released"
date: 2014-07-10 21:32
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.4](http://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.4</version>
</plugin>
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11146&styleName=Html&version=19228)

Bugs:

 * {% chjl MSITE-121 %} - Generated html files contain inconsistent new lines
 * {% chjl MSITE-665 %} - Site plugin version 3.2 seems to modify a project's classpath.
 * {% chjl MSITE-716 %} - update doxia-integration-tools to 1.6
 * {% chjl MSITE-718 %} - upgrade Doxia base to 1.6
 * {% chjl MSITE-719 %} - upgrade Doxia Site Tools to 1.6

Improvements:

 * {% chjl MSITE-454 %} - Don't use aggregator mojos for default report set
 * {% chjl MSITE-516 %} - reportPlugins should/could inherit more information from pluginManagement
 * {% chjl MSITE-711 %} - add report's goal name to output
 * {% chjl MSITE-713 %} - improve "Error during page generation" error message
 * {% chjl MSITE-714 %} - display statistics about Doxia documents rendered
 * {% chjl MSITE-720 %} - upgrade maven-reporting-exec to 1.2
 * {% chjl MSITE-722 %} - align display info on executed reports

Task:

 * {% chjl MSITE-715 %} - refactor: split Mojos in sub-packages


Enjoy,

-The Apache Maven team
