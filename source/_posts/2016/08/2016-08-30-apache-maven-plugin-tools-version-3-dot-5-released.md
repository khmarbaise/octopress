---
layout: post
title: "Apache Maven Plugin Tools Version 3.5 Released"
date: 2016-08-30 22:00:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Plugin Tools, version 3.5](https://maven.apache.org/plugin-tools/).

The Maven Plugin Tools contains the necessary tools to generate rebarbative
content like descriptor, help and documentation. In addition, it provides tools
to write Maven Plugins in scripting languages like Ant or Beanshell.

The Maven Plugin Plugin is used to create a Maven plugin descriptor for any
Mojo's found in the source tree, to include in the JAR. It is also used to
generate report files for the Mojos as well as for updating the plugin
registry, the artifact metadata and generating a generic help goal. 

https://maven.apache.org/plugin-tools/maven-plugin-plugin/

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugin-plugin</artifactId>
  <version>3.5</version>
</plugin>
```
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins-tools/download.cgi).

<!-- more -->

[Release Notes - Maven Plugin Tools - Version 3.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317820&version=12331169)

Bugs:
 * [MPLUGIN-292] - HelpMojo contains malformed HTML which causes javadoc to fail under JDK 8
 * [MPLUGIN-296] - java.lang.ClassNotFoundException: org.apache.maven.plugins.annotations.Execute
 * [MPLUGIN-299] - Help mojo cannot display goal details
 * [MPLUGIN-303] - Plugin Plugin breaks when ASM6.0_ALPHA is configured as dependency
 * [MPLUGIN-307] - The "alias" field on the annotation "@Parameter" is not considered for goal "plugin:report"
 * [MPLUGIN-309] - Upgrade to maven-parent-30
 * [MPLUGIN-310] - PluginReport should use generated plugin.xml by default
 * [MPLUGIN-312] - maven-plugin-tools-annotations visitors fail scanning java8 annotations

Improvements:

 * [MPLUGIN-275] - Move LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * [MPLUGIN-289] - better output when extracting info
 * [MPLUGIN-295] - Upgrade Maven Invoker Plugin version to 1.10
 * [MPLUGIN-300] - Prepare taglets for Java9
 * [MPLUGIN-301] - The text https://maven.apache.org/plugin-tools/maven-plugin-plugin/examples/using-annotations.html should be improved
 * [MPLUGIN-304] - MojoAnnotationsScanner should ignore special classes
 * [MPLUGIN-305] - MojoAnnotationsScanner should have better control over dependency scanning

Task:

 * [MPLUGIN-288] - refactoring: change plugin-tools' model package to org.apache.maven.tools.plugin.extractor.model 

Enjoy,

-The Apache Maven team

