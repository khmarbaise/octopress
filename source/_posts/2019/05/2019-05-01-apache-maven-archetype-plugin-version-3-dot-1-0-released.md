---
layout: post
title: "Apache Maven Archetype Plugin 3.1.0 Released"
date: 2019-05-01 14:30:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Archetype Plugin, version 3.1.0](https://maven.apache.org/archetype/maven-archetype-plugin/).

In short, Archetype is a Maven project templating toolkit. An archetype is defined as an original pattern or model from which all other things of the same kind are made. The names fits as we are trying to provide a system that provides a consistent means of generating Maven projects. Archetype will help authors create Maven project templates for users, and provides users with the means to generate parameterized versions of those project templates.

https://maven.apache.org/archetype/maven-archetype-plugin/index.html

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-archetype-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-archetype-plugin/download.cgi).

<!-- more -->

[Release Notes - Maven Archetype Plugin - Version 3.1.0]

Bugs:

 * {% ajl ARCHETYPE-492 %} Underscore in filenames problematic due to greedy regex
 * {% ajl ARCHETYPE-530 %} [archetype:create-from-project] Proxy configuration from settings.xml is not taken into account
 * {% ajl ARCHETYPE-534 %} archetype-descriptor.xsd is out of date

New Features:

 * {% ajl ARCHETYPE-553 %} Allow additional properties for IntegrationTestMojo's MavenInvoker
 * {% ajl ARCHETYPE-554 %} create archetype-descriptor-1.1.0.xsd containing validation regexp

Improvements:

 * {% ajl ARCHETYPE-536 %} Update Groovy dependency and enable Groovy Grape in archetype-post-generate.groovy script (by including Ivy dependency)
 * {% ajl ARCHETYPE-560 %} Require Java 7

Task:

 * {% ajl ARCHETYPE-542 %} switch from Git-WIP to Gitbox

Dependency upgrades:

 * {% ajl ARCHETYPE-543 %} Upgrade modello from 1.8.3 to 1.9.1
 * {% ajl ARCHETYPE-544 %} Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {% ajl ARCHETYPE-545 %} Upgrade parent to 33
 * {% ajl ARCHETYPE-551 %} Upgrade maven-invoker to 3.0.1
 * {% ajl ARCHETYPE-557 %} Upgrade surefire to 2.22.1

Enjoy,

-The Apache Maven team
