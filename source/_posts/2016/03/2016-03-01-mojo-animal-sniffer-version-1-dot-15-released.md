---
layout: post
title: "Mojo Animal Sniffer Version 1.15 Released"
date: 2016-03-01 21:10
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of 
[Animal Sniffer version 1.15](http://mojo.codehaus.org/animal-sniffer/).

Animal Sniffer provides tools to assist verifying that classes
compiled with a newer JDK/API are compatible with an older JDK/API.

[Release Notes - MojoHaus Animal Sniffer - Version 1.15](https://github.com/mojohaus/animal-sniffer/issues?utf8=%E2%9C%93&q=milestone%3A1.15+)

You must update your pom

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>animal-sniffer-maven-plugin</artifactId>
  <version>1.15</version>
</plugin>
```

Have fun!

The Mojo Team.

Olivier Lamy
