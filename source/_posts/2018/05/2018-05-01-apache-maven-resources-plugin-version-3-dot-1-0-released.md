---
layout: post
title: "Apache Maven Resources Plugin Version 3.1.0 Released"
date: 2018-05-01 11:30:45
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resources Plugin, Version 3.1.0](https://maven.apache.org/plugins/maven-resources-plugin).

The Resources Plugin handles the copying of project resources to the output
directory. There are two different kinds of resources: main resources and test
resources. The difference is that the main resources are the resources
associated to the main source code while the test resources are associated to
the test source code.

Thus, this allows the separation of resources for the main source code and its
unit tests.

Important Note: 

 * Maven 3.X only
 * JDK 7 minimum requirement

Reporters for this release:

 *  Michel Barret {%ajl MRESOURCES-247 %}

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-resources-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:
 
https://maven.apache.org/plugins/maven-resources-plugin/download.cgi

<!-- more -->

[Release Notes - Apache Maven Resources Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317827&version=12336059)


Bug:

 * {%ajl MRESOURCES-242 %} - Fix integration test include-git-ignore

Improvement:

 * {%ajl MRESOURCES-247 %} - Improve WARNING message about encoding.

Tasks:

 * {%ajl MRESOURCES-243 %} - Upgrade mave-surefire/failsafe-plugin 2.20.1
 * {%ajl MRESOURCES-245 %} - Upgrade to JDK 7 minimum.

Dependency upgrades:

 * {%ajl MRESOURCES-241 %} - Upgrade parent to 31
 * {%ajl MRESOURCES-244 %} - Upgrade plexus-utils 3.1.0
 * {%ajl MRESOURCES-248 %} - Add documentation information for GitHub

Enjoy,
 
-The Apache Maven team
