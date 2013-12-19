---
layout: post
title: "Tidy Maven Plugin 1.0-alpha-2 Released"
date: 2013-12-19 19:00:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce another pre-release of the 
[Tidy Maven Plugin, version 1.0-alpha-2](http://mojo.codehaus.org/tidy-maven-plugin/).


The Tidy Plugin is used when you want to sort the sections of a pom.xml
into the canonical order.


```
mvn tidy:pom
```

<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11062&version=19847)

Bugs fixed:

 * {% chjl MOJO-1942 %} - Whitespace gets mangled
 * {% chjl MOJO-1943 %} - Additional tabs inserted
 * {% chjl MOJO-1989 %} - tidy:pom drops some CR chars in new line on Windows

Improvements:

 * {% chjl MOJO-1939 %} - Preserve tabs while sorting pom
 * {% chjl MOJO-1983 %} - Add xml declaration


Enjoy,
The Mojo team.
