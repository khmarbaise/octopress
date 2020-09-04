---
layout: post
title: "Apache Maven Project Info Reports Plugin Version 3.0.0 Released"
date: 2020-09-04 18:35:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin version 3.0.0](https://maven.apache.org/plugins/maven-project-info-reports-plugin/)

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-project-info-reports-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-project-info-reports-plugin/download.cgi).

<!-- more --> 

[Release Notes - Maven Project Info Reports Plugin - Version 3.0.0]()


Bugs:

 * {%ajl MPIR-348 %} - Usage of HTTP in web site for git-scm.com resources cause redirects to HTTPS
 * {%ajl MPIR-349 %} - Bad modules links in 'index/modules' reports when 'distributionManagement.site.url' comes from settings.xml
 * {%ajl MPIR-359 %} - Generated links for Mercurial SCM are broken
 * {%ajl MPIR-362 %} - Dependency Management report doesn't exclude system scoped dependencies
 * {%ajl MPIR-365 %} - Failed tests on Java 9 due to error with keytool plugin "keytool: not found"
 * {%ajl MPIR-370 %} - Upgrade transitive BCEL to 6.2 to avoid org.apache.bcel.classfile.ClassFormatException

Improvements:

 * {%ajl MPIR-352 %} - Use protocol-agnostic URL for Gravatar
 * {%ajl MPIR-358 %} - Add GitHub for issue management
 * {%ajl MPIR-366 %} - Drop Maven 2 support

Tasks:

 * {%ajl MPIR-323 %} - Align Mojo class names, goals and output names
 * {%ajl MPIR-345 %} - Upgrade to Doxia 1.8
 * {%ajl MPIR-346 %} - Upgrade to Doxia Sitetools 1.8.1
 * {%ajl MPIR-347 %} - Upgrade to Java 6
 * {%ajl MPIR-350 %} - Upgrade of plexus-interpolation to 1.24.
 * {%ajl MPIR-353 %} - Upgrade parent to version 30
 * {%ajl MPIR-354 %} - Upgrade Maven Site Plugin to version 3.5.1 for ITs
 * {%ajl MPIR-355 %} - Upgrade dependencies which are code- and testsafe
 * {%ajl MPIR-356 %} - Deprecate not used methods in ProjectInfoReportUtils
 * {%ajl MPIR-367 %} - Remove Dependency Repository Locations from dependency report
 * {%ajl MPIR-368 %} - Upgrade to Java 7
 * {%ajl MPIR-369 %} - Drop Commons Lang for System builtins
 * {%ajl MPIR-372 %} - Remove fields duplicating parent class members

Dependency upgrades:

 * {%ajl MPIR-361 %} - Upgrade parent to 31
 * {%ajl MPIR-363 %} - Upgrade dependencies to latest versions


Enjoy,

-The Apache Maven team 
