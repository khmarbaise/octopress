---
layout: post
title: "Why is it bad To Activate/Deactive Modules By Profiles In Maven"
date: 2013-11-09 12:50
comments: true
categories: [Maven,Maven Best Practice]
---
Often you can observe that people are using 
[profiles to activate/deactivate](http://maven.apache.org/guides/introduction/introduction-to-profiles.html) 
modules in a Maven build like the following or something similar:
{% codeblock Modules and Profiles lang:xml %}
<profiles>
  <profile>
    <id>module-1</id>
    <modules>
      <module>module-1</module>
    </modules>
  </profile>
  <profile>
    <id>different</id>
    <modules>
      <module>module-2</module>
      <module>module-3</module>
      <module>module-4</module>
    </modules>
  </profile>
</profiles>
{% endcodeblock %}

The question is: Why is this bad?

<!-- more -->

First let us reduce the above example to a simpler one like this:

{% codeblock Modules and Profiles lang:xml %}
..
<modules>
  <module>module-1</module>
  <module>module-2</module>
</modules>
..
<profiles>
  <profile>
    <id>supp</id>
    <modules>
      <module>module-add</module>
    </modules>
  </profile>
</profiles>
{% endcodeblock %}

One of the important situations is if you like to create a release of your artifacts via
the [maven-release-plugin](http://maven.apache.org/maven-release-plugin/) which is not really
unusual (or shouldn't be). What will happen if you do that with a pom like the above?

If you don't activate the profile ```supp``` during the release process
the modules ```module-1```, ```module-2``` parents versions will be changed. But -- the parent
version of the ```module-add``` has not been changed, because it was not part of the reactor during
the release plugin run.

This will result into a situation like this:

{% codeblock Modules and Profiles lang:xml %}
+-- pom.xml (version: 1.1-SNAPSHOT)
    +-- module-1 (version: 1.1-SNAPSHOT)
    +-- module-2 (version: 1.1-SNAPSHOT)
    +-- module-add (version: 1.0-SNAPSHOT)
{% endcodeblock %}

On the first glance this will work and will do what you want until you activate the profile ````supp```
than your build will fail or you will get strange error messages about missing artifacts.

That is caused by the ```module-add``` version which is not the same as the other modules in the multi-module
build and so maven tries to solve the module-add with the above version from the local repository instead from 
the reactor (in other words from the current build) which will lead to the described problems.

So the gist is simply do never use modules in profiles. A solution for the above example might be to
use the profile within the module itself 

``` xml Profile in module pom
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.training.module</groupId>
    <artifactId>parent</artifactId>
    <version>0.1.0-SNAPSHOT</version>
  </parent>

  <artifactId>module-add</artifactId>
  <name>Module: Add Module</name>

  ...
  <profiles>
    <profile>
      <id>module-add</id>
      
      <build>
      ... Do whatever you need to do
      </build>
    </profile>
  </profiles>

</project>
```

This has the obviously advantage that the module is part of the reactor run and 
no problems can occur with the versions during usage of [maven-release-plugin](http://maven.apache.org/maven-release-plugin)
and other helpful plugins (for example [versions-maven-plugin](http://mojo.codehaus.org/versions-maven-plugin/)) etc.
