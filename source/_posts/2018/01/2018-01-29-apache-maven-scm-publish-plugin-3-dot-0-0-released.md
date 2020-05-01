---
layout: post
title: "Apache Maven SCM Publish Plugin 3.0.0 Released"
date: 2018-01-29 23:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM Publish Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-scm-publish-plugin/)

The maven-scm-publish-plugin is a utility plugin to allow publishing Maven 
website to any supported SCM. The primary goal was to have an utility plugin 
to allow Apache projects to publish Maven websites via the ASF svnpubsub 
system.

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-scm-publish-plugin/download.cgi


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-scm-publish-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven SCM Publish Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317920&version=12331371)

Bugs:

 * {%ajl MSCMPUB-19 %} - Plugin fails to publish to SCMs whose working copies don't have any kind of private storage
 * {%ajl MSCMPUB-29 %} - Website still points to jira.codehaus.org

Improvements:

 * {%ajl MSCMPUB-16 %} - MavenProject/MavenSession Injection as a parameter instead as a component.
 * {%ajl MSCMPUB-21 %} - Upgrade maven-scm to 1.9.4
 * {%ajl MSCMPUB-22 %} - Upgrade maven-shared-components parent to version 30
 * {%ajl MSCMPUB-23 %} - Bump version to 3.0.0-SNAPSHOT
 * {%ajl MSCMPUB-24 %} - Upgrade maven-release-manager to 2.5.3
 * {%ajl MSCMPUB-25 %} - Upgrade Maven SCM to 1.9.5
 * {%ajl MSCMPUB-26 %} - Change scope of maven-plugin-annotations to provided
 * {%ajl MSCMPUB-32 %} - improve doc for GitHub gh-pages use in orphan Git branch
 * {%ajl MSCMPUB-33 %} - add color output to improve UX
 * {%ajl MSCMPUB-35 %} - add support for symbolic links

Task:

 * {%ajl MSCMPUB-34 %} - switch to Git

Enjoy,

-The Apache Maven team
