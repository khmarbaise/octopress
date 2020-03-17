---
layout: post
title: "Apache Maven Parent POM Version 34 Released"
date: 2020-02-03 20:12:13
comments: true
categories: [BM,Maven,Maven-Shared,parent-poms]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Parent POMs Version 34](https://maven.apache.org/pom/maven/)

Maven Parent POMs include [Maven Parent POM](https://maven.apache.org/pom/maven/)
 itself, but also [Maven Plugins Parent POM](https://maven.apache.org/pom/maven/maven-plugins/), 
[Maven Shared Components Parent POM](https://maven.apache.org/pom/maven/maven-shared-components/), 
[Maven Skins Parent POM](https://maven.apache.org/pom/maven/maven-skins/) and
Maven Doxia Tools Parent POM.

https://maven.apache.org/pom/maven/

You should specify the version in your project as parent like the following:

``` xml
<parent>
   <groupId>org.apache.maven</groupId>
   <artifactId>maven-parent</artifactId>
   <version>34</version>
</parent>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/maven/download.html


<!-- more -->

[Release Notes - Apache Maven Parent POM - Version 34](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12311250&version=12343766)

* Bugs:

  * {%ajl MPOM-221 %} - All Links for Diff produce Forbidden
  * {%ajl MPOM-235 %} - Google Custom Search broken

* New Feature:

  * {%ajl MPOM-223 %} - Introduce parent for extensions

* Improvements:

  * {%ajl MPOM-216 %} - Update java minimum version to 7
  * {%ajl MPOM-226 %} - Ignore .asf.yaml for license check in apache-rat-plugin
  * {%ajl MPOM-230 %} - Remove maven-report

* Task:

  * {%ajl MPOM-217 %} - remove plexus javadoc taglet configuration

* Dependency upgrades:

  * {%ajl MPOM-212 %} - upgrade plexus-component-metadata to 2.0.0 to get reproducible plexus/components.xml
  * {%ajl MPOM-234 %} - Upgrade apache-rat-plugin to 0.13

Enjoy,
- The Apache Maven Team

