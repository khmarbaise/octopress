---
layout: post
title: "Apache Maven Resources Plugin Version 2.7 Released"
date: 2014-10-02 19:52
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resources Plugin, Version 2.7](http://maven.apache.org/plugins/maven-resources-plugin).

asdlfjadfkThe Javadoc Plugin uses the Javadoc tool to generate javadocs for the specified project.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-resources-plugin</artifactId>
  <version>2.7</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Resources Version 2.7](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11145&version=18645)


Bug:

 * {% chjl MRESOURCES-182 %} - Example Custom resource filters incorrect

Improvements:

 * {% chjl MRESOURCES-177 %} - Use version 1.2 of maven-filtering to use improvements
 * {% chjl MRESOURCES-180 %} - Documentation does not use correct versions
 * {% chjl MRESOURCES-181 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MRESOURCES-183 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MRESOURCES-184 %} - Removing plexus-container-default dependency


Enjoy,

-The Apache Maven team
