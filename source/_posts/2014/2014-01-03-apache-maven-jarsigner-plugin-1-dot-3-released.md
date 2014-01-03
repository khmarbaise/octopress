---
layout: post
title: "Apache Maven Jarsigner Plugin Version 1.3 Released"
date: 2014-01-03 13:15
comments: true
categories: [News,BM,Maven,Maven-Plugins,Maven-Plugin-Releases,Maven-Shared]
---
The Maven team is pleased to announce the release of the 
[Maven Jarsigner Plugin, version 1.3](http://maven.apache.org/plugins/maven-jarsigner-plugin/).

This plugin signs and verifies the project artifacts using the jarsigner
tool. See the plugin´s site for more details:

This plugin is meant to supercede the existing jar:sign and
jar:verify goals from the Maven Jar Plugin which will be deprecated
in a future release.

To use the updated plugin in your projects, you need to add the 
following snippet to the plugins or plugin management section of your POM:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-jarsigner-plugin</artifactId>
  <version>1.3</version>
  <executions>
    ...
  </executions>
</plugin>
```

<!-- more -->

[Release Notes - Maven Jar Signer Plugin - Version 1.3](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11990&version=18656)

Bug:

 * {% chjl MJARSIGNER-13 %} - signing in multi-module project fails on windows
 * {% chjl MJARSIGNER-21 %} - jars signed using Java 7 have "invalid SHA1 signature"
 * {% chjl MJARSIGNER-26 %} - Jar Signer does not support protected authentication path
 * {% chjl MJARSIGNER-29 %} - verbose parameter is not filled in jarsigner requests

Improvements:

 * {% chjl MJARSIGNER-28 %} - verify mojo can also use keystore and alias parameters

New Features:

 * {% chjl MJARSIGNER-12 %} - It should be possible to save the keystore in one location for multi module projects
 * {% chjl MJARSIGNER-16 %} - Add the option -tsa to the configuration
 * {% chjl MJARSIGNER-18 %} - Support for Jar plugin´s "errorWhenNotSigned" option
 * {% chjl MJARSIGNER-24 %} - Use Password Encryption in pom.xml

Tasks:

 * {% chjl MJARSIGNER-9 %} - Add toolchain in JarSignMojo.java#getJDKCommandExe()
 * {% chjl MJARSIGNER-22 %} - Add french translations
 * {% chjl MJARSIGNER-25 %} - use maven-plugin-tools´ java 5 annotations
 * {% chjl MJARSIGNER-27 %} - Use maven-jarsigner 1.3
 * {% chjl MJARSIGNER-31 %} - Update maven-shared-utils to 0.5
 * {% chjl MJARSIGNER-32 %} - Update requirements to maven 2.1.0

Enjoy,

The Maven team.
