---
layout: post
title: "Apache Maven Clean Plugin Version 2.6 Released"
date: 2014-09-25 22:47
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Clean Plugin, Version 2.6](http://maven.apache.org/plugins/maven-clean-plugin).

The Clean Plugin is used when you want to remove files generated at build-time
in a project's directory.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-clean-plugin</artifactId>
  <version>2.6</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Clean Version 2.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11128&version=18533)

Bug:

 * {% chjl MCLEAN-52 %} - Use new annotations

Improvement:

 * {% chjl MCLEAN-57 %} - Set prerequisites to Maven 2.2.1

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
