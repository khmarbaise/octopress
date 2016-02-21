---
layout: post
title: "MojoHaus Animal Sniffer JRE8 signature version 1.0 Released"
date: 2016-02-21 12:43
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the Animal Sniffer JRE8
signature version 1.0.

The Animal Sniffer Maven Plugin provides a means to verify that your classes
only use the classes, methods and fields provided by specific API signatures
that you specify.

This signature is created based on Oracle JRE8 (JAVA_VERSION=1.8.0)

To get this update, simply specify the GAV of the signature as configuration to
your animal-sniffer-maven-plugin:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>animal-sniffer-maven-plugin</artifactId>
  <configuration>
    <signature>
      <groupId>org.codehaus.mojo.signature</groupId>
      <artifactId>java18</artifactId>
      <version>1.0</version>
    </signature>
  </configuration>
</plugin>
```


Enjoy,

The Mojo team.
Robert Scholte
