---
layout: post
title: "Mojo's JAXB-2 Maven Plugin Version 1.6 - Released"
date: 2014-03-12 20:54
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
Hi,

The Mojo team is pleased to announce the release of 
[Mojo's JAXB-2 Maven Plugin version 1.6](http://mojo.codehaus.org/jaxb2-maven-plugin/).


Significant updates in this relase is the upgrade to JAXB 2.2 and support for JDK 8. 
Please also note that the plugin now requires Maven 2.2.1+ and Java 6+ for execution.


To get this update, simply specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>jaxb2-maven-plugin</artifactId>
  <version>1.6</version>
</plugin>
```

[Release Notes](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11699&version=18747)

Bugs:

 * {% chjl MJAXB-8 %} - When having multiple executions the jaxb plugin uses same staleFile for both runs
 * {% chjl MJAXB-79 %} - JAXB-2 Maven Plugin don't include the license file
 * {% chjl MJAXB-80 %} - Schemagen has namespace prefix problem
 * {% chjl MJAXB-83 %} - Provide support for JDK8

Improvements:

 * {% chjl MJAXB-61 %} - Upgrade to JAXB 2.2
 * {% chjl MJAXB-81 %} - transformSchema should also replace prefix in "type" attribute
 * {% chjl MJAXB-85 %} - Upgrade dependency to Java 6
 * {% chjl MJAXB-86 %} - Upgrade requirement to Maven 2.2.1

Task

 * {% chjl MJAXB-45 %} - Add verify scripts for integration tests
 * {% chjl MJAXB-84 %} - Convert to Mojo Java 5 annotations
 * {% chjl MJAXB-88 %} - Random Unit test failure


Enjoy,

The Mojo team.

/Anders
