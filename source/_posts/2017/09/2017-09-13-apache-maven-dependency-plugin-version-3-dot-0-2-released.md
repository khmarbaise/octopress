---
layout: post
title: "Apache Maven Dependency Plugin Version 3.0.2 Released"
date: 2017-09-19 19:15:03
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Dependecy Plugin, version 3.0.2](http://maven.apache.org/plugins/maven-dependency-plugin/).

The dependency plugin provides the capability to manipulate artifacts. It
can copy and/or unpack artifacts from local or remote repositories to a
specified location.

https://maven.apache.org/plugins/maven-dependency-plugin/

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-dependency-plugin</artifactId>
    <version>3.0.2</version>
</plugin>
``` 

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-dependency-plugin/download.cgi


<!-- more -->

[Release Notes - Maven Dependency Plugin - Version 3.0.2](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317227&version=12338874)


Bugs:

 * {% ajl MDEP-571 %} - JDK9: Issue with list goal fails with java.lang.NoSuchMethodException
 * {% ajl MDEP-573 %} - "purge-local-repository -Dinclude" does not work as described
 * {% ajl MDEP-577 %} - dependency:list doesn't show module name
 * {% ajl MDEP-583 %} - Failed to create release on JDK 8 based on JavaDoc issues

Improvements:

 * {% ajl MDEP-578 %} - Add message in case module name cannot be extracted from jar.
 * {% ajl MDEP-580 %} - Recognize source of name for automatic modules

Task:

 * {% ajl MDEP-581 %} - Downgrade maven-artifact-transfer to release version instead of SNAPSHOT

Enjoy,

-The Apache Maven team
