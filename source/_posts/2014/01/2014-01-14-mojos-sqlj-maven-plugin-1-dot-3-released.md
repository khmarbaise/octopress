---
layout: post
title: "Mojo's SQLJ Maven Plugin 1.3 - Released"
date: 2014-01-14 22:51
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the 
[release of Mojo´s SQLJ Maven Plugin version 1.3](http://mojo.codehaus.org/sqlj-maven-plugin/).


To get this update, simply specify the version in your project´s plugin configuration:

``` xml
<plugin>
      <groupId>org.codehaus.mojo</groupId>
      <artifactId>sqlj-maven-plugin</artifactId>
      <version>1.3</version>
</plugin>
```
<!-- more -->

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11890&version=19611):

Improvements:

 * {% chjl MSQLJ-15 %} - Plugin does not include project dependencies when translating

Task:

 * {% chjl MSQLJ-16 %} - Convert FAQ page to fml format


Enjoy,

The Mojo team.
