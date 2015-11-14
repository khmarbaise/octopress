---
layout: post
title: "MojoHaus JAX-WS Maven Plugin version 2.4 Released"
date: 2015-11-14 20:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the 
[JAX-WS Maven Plugin version 2.4](http://www.mojohaus.org/jaxws-maven-plugin/).

This plugin contains Maven adapter for JAX-WS's toolset.
The original code was developed in the Codehaus Mojo project, then as of March 
2007, the project moved to jax-ws-commons with version 1.x in 
org.codehaus.mojo groupId and version 2.x in org.jvnet.jax-ws-commons groupId.
In September 2015, for version 2.4, it went back to MojoHaus (the new home of 
Codehaus Mojo) in org.codehaus.mojo groupId.

To get this update, simply specify the version in your project's plugin 
configuration: 

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>jaxws-maven-plugin</artifactId>
  <version>2.4</version>
</plugin>
```

[Release Notes JAX-WS Maven Plugin Version 2.4](http://www.mojohaus.org/jaxws-maven-plugin/release-notes-24.html)

Enjoy,

The Mojo team.
 
Hervé
