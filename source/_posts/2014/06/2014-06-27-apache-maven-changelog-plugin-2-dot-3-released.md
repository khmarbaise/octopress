---
layout: post
title: "Apache Maven ChangeLog Plugin 2.3 Released"
date: 2014-06-27 23:19
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Changelog Plugin, version 2.3](http://maven.apache.org/plugins/maven-changelog-plugin/).

The Maven Changelog Plugin generates reports regarding the recent changes in
your Software Configuration Management or SCM. These reports include the
changelog report, developer activity report and the file activity report.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-changelog-plugin</artifactId>
  <version>2.3</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Changelog Plugin - Version 2.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11211&version=16516)

Bugs:

 * {% chjl MCHANGELOG-68 %} - testReadFile unit test timebased comparisons fail
 * {% chjl MCHANGELOG-108 %} - read/write changelog.xml inconsistency
 * {% chjl MCHANGELOG-129 %} - use maven-plugin-tools' java 5 annotations
 * {% chjl MCHANGELOG-130 %} - NullPointerException when no SCM <url> is defined
 * {% chjl MCHANGELOG-133 %} - ChangeLog: allow encoding of file paths for gitblit
 * {% chjl MCHANGELOG-134 %} - ChangeLog: added include/exclude support to filter uninteresting files

Improvements:

 * {% chjl MCHANGELOG-110 %} - use ${project.reporting.outputEncoding} as default value for "outputEncoding" parameter and default to UTF-8
 * {% chjl MCHANGELOG-114 %} - add standard skip configuration option
 * {% chjl MCHANGELOG-123 %} - Patch with support for SCM provider implementations (similar to release plugin)
 * {% chjl MCHANGELOG-126 %} - Upgrade to Maven SCM 1.8
 * {% chjl MCHANGELOG-131 %} - Resource bundle for Spanish Argentina

New Feature:

 * {% chjl MCHANGELOG-122 %} - Add pt_BR localization

Task

 * {% chjl MCHANGELOG-100 %} - Bump to Doxia 1.1.4

Enjoy,

-The Apache Maven team
