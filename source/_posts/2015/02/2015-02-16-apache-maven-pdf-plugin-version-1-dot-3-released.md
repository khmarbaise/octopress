---
layout: post
title: "Apache Maven PDF Plugin Version 1.3 Released"
date: 2015-02-16 21:29
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven PDF Plugin, version 1.3](http://maven.apache.org/plugins/maven-pdf-plugin/).

This plug-in allows you to generate a PDF version of your project's
documentation.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-pdf-plugin</artifactId>
  <version>1.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven PDF Plugin - Version 1.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11932&version=18950)

Bugs:

 * {% chjl MPDF-66 %} - custom properties are not filtered in .apt.vm
 * {% chjl MPDF-67 %} - Update plexus-interpolation for thread-safety issues

Improvements:

 * {% chjl MPDF-60 %} - Locale properties for Spanish and Galician
 * {% chjl MPDF-63 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MPDF-68 %} - Removed dependency org.codehaus.plexus:plexus-container-default:1.0-alpha-9
 * {% chjl MPDF-69 %} - Removed unused dependency to maven-assembly-plugin
 * {% chjl MPDF-70 %} - Upgrade maven-reporting-exec/maven-reporting-impl
 * {% chjl MPDF-71 %} - Remove backward compatibility with Maven 2.0.X

Task:

 * {% chjl MPDF-61 %} - Change Maven prerequisite to 2.2.1

Enjoy,

-The Apache Maven team
