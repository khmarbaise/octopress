---
layout: post
title: "Mojo flatten-maven-plugin Version 1.0.0-beta-3 Released"
date: 2014-11-20 22:34
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[flatten-maven-plugin version 1.0.0-beta-3](http://mojo.codehaus.org/flatten-maven-plugin/).

Flatten Maven Plugin generates a flattened version of your pom.xml and makes
maven to install and deploy this one instead of the original pom.xml.

All you need to do is add the plugin to the plugins in your build section:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>flatten-maven-plugin</artifactId>
  <version>1.0.0-beta-3</version>
</plugin>
```

All known bugs have been resolved and the plugin has already matured. It is
used in several complex projects to simplify deployments.

<!-- more -->

[Release Notes for flatten-maven-plugin version 1.0.0-beta-3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11062&version=20426)

Bugs:

 * {% chjl MOJO-2032 %} - flatten-maven-plugin: model resolver fails in case of external parent POM
 * {% chjl MOJO-2039 %} - Maven 3.2.2 build error with flatten plugin
 * {% chjl MOJO-2042 %} - flatten-maven-plugin: adds central repository to flattened POM

Improvement:

 * {% chjl MOJO-2038 %} - Keep plugins with extensions

Enjoy,

The Mojo team. 
