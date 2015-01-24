---
layout: post
title: "Apache Maven JarSigner Plugin Version 1.4 Released"
date: 2015-01-24 23:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JarSigner Plugin, version 1.4](http://maven.apache.org/plugins/maven-jarsigner-plugin/).

This plugin provides the capability to sign or verify a project artifact and
attachments using jarsigner.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jarsigner-plugin</artifactId>
  <version>1.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven JarSigner Plugin - Version 1.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11990&version=19865).

Improvements:

 * {% chjl MJARSIGNER-37 %} - MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% chjl MJARSIGNER-39 %} - Upgrade to maven-plugins parent version 27
 * {% chjl MJARSIGNER-40 %} - Upgrade maven version to 2.2.1
 * {% chjl MJARSIGNER-42 %} - Upgrade maven-shared-utils to 0.7
 * {% chjl MJARSIGNER-43 %} - Upgrade to maven-jarsigner component 1.4


Enjoy,

-The Apache Maven team
