---
layout: post
title: "Apache Maven Enforcer Version 1.4.1 - Released"
date: 2015-08-28 17:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Enforcer, version 1.4.1](http://maven.apache.org/enforcer).

Enforcer is a build rule execution framework.

If you need to force things within your build please use the 
[maven-enforcer-plugin](http://maven.apache.org/enforcer/maven-enforcer-plugin/).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-enforcer-plugin</artifactId>
  <version>1.4.1</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Enforcer - Version 1.4.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317520&version=12330766)

Bugs:

 * {% ajl MENFORCER-222 %} - RequireSameVersion rule regression between 1.3 and 1.4
 * {% ajl MENFORCER-224 %} - Regression from 1.3.1 to 1.4 with bannedDependencies rule
 * {% ajl MENFORCER-229 %} - Ban Distribution Management documentation example doesn't work
 * {% ajl MENFORCER-237 %} - Resources Link to codehaus is wrong

Improvements:

 * {% ajl MENFORCER-223 %} - Upgrade mrm-maven-plugin to 1.0-beta-2
 * {% ajl MENFORCER-227 %} - Document nullability with @Nonnull on EnforcerRule API
 * {% ajl MENFORCER-233 %} - Upgrade maven-invoker-plugin to 2.0.0
 * {% ajl MENFORCER-235 %} - Use maven-fluido-skin 1.4
 * {% ajl MENFORCER-236 %} - Upgrade maven-assembly-plugin version from 2.4 to 2.5.5 in integration test
 * {% ajl MENFORCER-238 %} - Upgrade plexus-utils to 3.0.22

Enjoy,

-The Apache Maven team
