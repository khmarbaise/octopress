---
layout: post
title: "Apache Maven Invoker Plugin Version 3.0.0 Released"
date: 2017-05-24 07:51
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Invoker Plugin, version 3.0.0](https://maven.apache.org/plugins/maven-invoker-plugin/).

The Invoker Plugin is used to run a set of Maven projects. The plugin can
determine whether each project execution is successful, and optionally can
verify the output generated from a given project execution.

This plugin is in particular handy to perform integration tests for other Maven
plugins. The Invoker Plugin can be employed to run a set of test projects that
have been designed to assert certain features of the plugin under test.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-invoker-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```


You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-invoker-plugin/download.cgi

<!-- more -->

[Release Notes - Maven Invoker Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317525&version=12330827)

Bugs:

 * {% ajl MINVOKER-147 %} - setupIncludes / parallelThreads does not guarantee execution of setup*/pom.xml first.
 * {% ajl MINVOKER-150 %} - Results from prior execution are included unless clean build
 * {% ajl MINVOKER-210 %} - Remove link to non-existing Codehaus wiki
 * {% ajl MINVOKER-213 %} - The plugin should escape any XML special characters (&<>) during interpolating XML files.

Improvements:

 * {% ajl MINVOKER-189 %} - Update to java 1.6
 * {% ajl MINVOKER-193 %} - Ensure that setupProjects are always executed first when using -Dinvoker.test
 * {% ajl MINVOKER-197 %} - Upgrade maven-invoker-plugin to 2.0.0
 * {% ajl MINVOKER-199 %} - Remove @Deprecated marked code and parameters
 * {% ajl MINVOKER-202 %} - Remove unused ant dependency
 * {% ajl MINVOKER-204 %} - Upgrade to Maven3 plugin
 * {% ajl MINVOKER-206 %} - Upgrade maven-plugins parent to version 30
 * {% ajl MINVOKER-207 %} - Remove @Deprecated marked code
 * {% ajl MINVOKER-208 %} - Documentation about invoker properties related to usage of options/parameters should be improved
 * {% ajl MINVOKER-211 %} - Some ITs can't be re-executed without clean
 * {% ajl MINVOKER-215 %} - Use maven-artifact-transfer to support multiple Aether implementations
 * {% ajl MINVOKER-216 %} - Prepare for Java9 (requires Groovy upgrade)
 * {% ajl MINVOKER-217 %} - Upgrade to maven-invoker shared component release version 3.0.0
 * {% ajl MINVOKER-219 %} - Change default value for cloneProjectsTo and cloneClean

New Feature:

 * {% ajl MINVOKER-205 %} - add color messages

Tasks:

 * {% ajl MINVOKER-164 %} - Maven Invoker still using -r option when such is no longer supported
 * {% ajl MINVOKER-212 %} - Upgrade of plexus-interpolation to 1.24.
 * {% ajl MINVOKER-214 %} - Allow indexed maven.version and os.familiy in invoker.properties
 * {% ajl MINVOKER-218 %} - Change package to o.a.m.plugins

Test:

 * {% ajl MINVOKER-209 %} - ITs fail (on Windows 10) when working directory contains space

Enjoy,

-The Apache Maven team
