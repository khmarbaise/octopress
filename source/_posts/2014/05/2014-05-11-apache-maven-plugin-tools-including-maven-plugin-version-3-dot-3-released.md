---
layout: post
title: "Apache Maven Plugin Tools (including Maven Plugin) Version 3.3 Released"
date: 2014-05-11 18:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the Apache Maven
Plugin Tools, version 3.3.

The [Maven Plugin Tools](http://maven.apache.org/plugin-tools/) contains the
necessary tools to be able to produce Maven Plugins in scripting languages and
to generate rebarbative content like descriptor, help and documentation.

The [Maven Plugin
Plugin](http://maven.apache.org/plugin-tools/maven-plugin-plugin/) is used to
create a Maven plugin descriptor for any Mojo's found in the source tree, to
include in the JAR. It is also used to generate report files for the Mojos as
well as for updating the plugin registry, the artifact metadata and generating
a generic help goal.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-plugin-plugin</artifactId>
  <version>3.3</version>
</plugin>
```

<!-- more -->

Release Notes - Maven Plugin Tools - Version 3.3

Bugs:

 * {% chjl MPLUGIN-191 %} - plugin-info.html is not created
 * {% chjl MPLUGIN-234 %} - Extreme amounts of debug logging
 * {% chjl MPLUGIN-235 %} - Doc example incorrectly states that plexus-utils is needed as a dependency
 * {% chjl MPLUGIN-236 %} - Value for Mojo's 'defaultPhase' parameter is incorrectly a string in examples
 * {% chjl MPLUGIN-239 %} - Execute goal does not passes from mojos.xml pluginMetadata
 * {% chjl MPLUGIN-242 %} - NullPointerException in MojoClassVisitor.visit()
 * {% chjl MPLUGIN-244 %} - Help mojo generates Javadoc, which is not accepted by JDK 8 doclint
 * {% chjl MPLUGIN-245 %} - @Parameter property names are not written to the plugin- help.xml file
 * {% chjl MPLUGIN-248 %} - XML-Namespace in ITs for ant-based mojos are wrong.
 * {% chjl MPLUGIN-255 %} - Generated HelpMojo doesn't close resource stream
 * {% chjl MPLUGIN-258 %} - IT failures with Jdk 8 (EA) 
 * {% chjl MPLUGIN-260 %} - Plugin that uses annotations in Java 8 source can't generate descriptor
 * {% chjl MPLUGIN-262 %} - Generated HelpMojo doesn't display default values and user properties.

Improvements:

 * {% chjl MPLUGIN-237 %} - JavaDoc WARNING on generated HelpMojo class.
 * {% chjl MPLUGIN-246 %} - Clarify that super class must also use annotations
 * {% chjl MPLUGIN-264 %} - Allow other packaging types

New Features:

 * {% chjl MPLUGIN-259 %} - @Parameter name="xxx" to set bean property name different from class' field

Tasks:

 * {% chjl MPLUGIN-233 %} - remove InstanciationStrategy enum from annotations
 * {% chjl MPLUGIN-265 %} - remove deprecated API since introduction of PluginToolsRequest

Wishes:

 * {% chjl MPLUGIN-249 %} - give snippets to show use of expressions to get Maven objects
 * {% chjl MPLUGIN-250 %} - since element is not in version 1.0.0 of plugin- metadata: should create a new version of the descriptor
 * {% chjl MPLUGIN-257 %} - deprecate classical Maven objects as components
 * {% chjl MPLUGIN-261 %} - sort goals in generated plugin.xml

Enjoy,

-The Apache Maven team
