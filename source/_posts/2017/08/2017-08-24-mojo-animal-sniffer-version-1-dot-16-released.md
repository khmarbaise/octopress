---
layout: post
title: "Mojo Animal Sniffer Version 1.16 Released"
date: 2017-08-24 15:30:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of 
[Animal Sniffer version 1.16](http://mojo.codehaus.org/animal-sniffer/).

Animal Sniffer provides tools to assist verifying that classes
compiled with a newer JDK/API are compatible with an older JDK/API.

[Release Notes - MojoHaus Animal Sniffer - Version 1.16](https://github.com/mojohaus/animal-sniffer/issues?q=milestone%3A1.16+is%3Aclosed)

You must update your pom

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>animal-sniffer-maven-plugin</artifactId>
  <version>1.16</version>
</plugin>
```

Have fun!

The Mojo Team.
