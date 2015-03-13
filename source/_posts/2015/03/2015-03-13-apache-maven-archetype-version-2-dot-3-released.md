---
layout: post
title: "Apache Maven Archetype 2.3 Released"
date: 2015-03-13 23:47
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Archetype, version 2.3](http://maven.apache.org/archetype/).

In short, Archetype is a Maven project templating toolkit.

Using the new release:

``` 
mvn org.apache.maven.plugins:maven-archetype-plugin:2.3:generate
```

<!-- more -->

[Release Notes Apache Maven Archetype Version 2.3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11095&version=18127):

Bugs:

 * [ARCHETYPE-345] - archetype:create-from-project do not process <jarModule> and <ejbModule> sections into EARs pom.xml
 * [ARCHETYPE-397] - Required property default value is not displayed correctly if a Velocity expression
 * [ARCHETYPE-413] - on linux adding <parent> element to generate pom.xml changes line endings to /r/n
 * [ARCHETYPE-429] - JIRA report in site only shows fixes up to v2.1 of plugin
 * [ARCHETYPE-435] - Bad link to old docs in usage page
 * [ARCHETYPE-477] - Upgrade maven-invoker-plugin from 1.7 to 1.9

Improvements:

 * [ARCHETYPE-182] - Adding 'role-hint' for the default Selector/Configurer/Queryer implementations
 * [ARCHETYPE-401] - use repo.maven.apache.org CNAME to provide more stability
 * [ARCHETYPE-418] - use plugin annotations
 * [ARCHETYPE-428] - Improve Generate project in batch mode doc page
 * [ARCHETYPE-465] - Upgrade to maven-parent version 26
 * [ARCHETYPE-466] - Upgrade maven-invoker 2.0.11 to 2.1.1
 * [ARCHETYPE-467] - Removed unused maven-war-plugin dependency.
 * [ARCHETYPE-468] - Upgrade maven-plugin-testing-harness to 1.3

Tasks.

 * [ARCHETYPE-431] - Only include Apache Maven archetypes in internal archetype catalog
 * [ARCHETYPE-432] - Update distributionManagement in POM
 * [ARCHETYPE-471] - Make a final Maven 2.2.1 release

Wish:

 * [ARCHETYPE-464] - Upgrade Plugin Required Maven Version to 2.2.1


Enjoy,

- The Apache Maven team
