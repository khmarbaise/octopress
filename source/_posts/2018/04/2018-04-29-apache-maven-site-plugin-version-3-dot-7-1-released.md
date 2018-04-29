---
layout: post
title: "Apache Maven Site Plugin Version 3.7.1 Released"
date: 2018-04-29 09:30:45
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.7.1](https://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-site-plugin/download.cgi

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.7.1</version>
</plugin>
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.7.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12342371&styleName=Text)

Bugs:

 * {%ajl MSITE-806 %} - Site generation does not work when no report configured nor Doxia document provided
 * {%ajl MSITE-809 %} - Documentation: examples/configuring-reports.html includes invalid XML
 * {%ajl MSITE-812 %} - Missing '/' in log when deploying documentation by site:stage
 * {%ajl MSITE-817 %} - inherit edit value in site.xml
 * {%ajl MSITE-818 %} - site:run fails to find locale when zh_CN is used

Improvements:

 * {%ajl MSITE-811 %} - Upgrade parent to 31
 * {%ajl MSITE-819 %} - improve display of site rendering with locale info

Wish:

 * {%ajl MSITE-815 %} - highlight skin used to render site and documents statistics

Tasks:

 * {%ajl MSITE-767 %} - Revert r1729902 caused by DOXIASITETOOLS-155 and fix ITs as soon as parent POMs and site.xml descriptors have been upgraded
 * {%ajl MSITE-821 %} - add documentation on site plugin dependencies

Enjoy,

-The Apache Maven team
