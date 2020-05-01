---
layout: post
title: "Apache Software Foundation Parent POM Version 19 Released"
date: 2018-01-25 10:15:00
comments: true
categories: asf
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 19](https://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

``` xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>19</version>
</parent>
```
You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/asf/download.html


<!-- more -->

Release Notes - Maven POMs - Version ASF-19

Improvements:

 * {%ajl MPOM-118 %} - Enforce strong GPG signatures by default
 * {%ajl MPOM-124 %} - Text about for default compiler version giving 1.4 which is wrong
 * {%ajl MPOM-129 %} - Upgrade apache-rat-plugin to 0.12
 * {%ajl MPOM-130 %} - Upgrade maven-jar-plugin to version 3.0.2
 * {%ajl MPOM-131 %} - Upgrade maven-source-plugin to 3.0.1
 * {%ajl MPOM-136 %} - Upgrade maven-resources-plugin to 3.0.1
 * {%ajl MPOM-137 %} - Upgrade maven-scm-plugin to 1.9.5
 * {%ajl MPOM-164 %} - Require Maven 3.0 to build ASF projects
 * {%ajl MPOM-169 %} - Update to latest RAT 0.12

Tasks:

 * {%ajl MPOM-132 %} - assembly plugin should use posix, not gnu for tarLongFileMode
 * {%ajl MPOM-141 %} - Upgrade maven-assembly-plugin to 3.0.0.
 * {%ajl MPOM-142 %} - Upgrade maven-compiler-plugin to 3.6.0.
 * {%ajl MPOM-144 %} - Upgrade maven-javadoc-plugin to 2.10.4.
 * {%ajl MPOM-146 %} - Upgrade maven-resources-plugin to 3.0.2.
 * {%ajl MPOM-147 %} - Upgrade maven-war-plugin to 3.0.0.
 * {%ajl MPOM-148 %} - Upgrade clirr-maven-plugin to 2.8.
 * {%ajl MPOM-165 %} - upgrade maven-invoker-plugin to 3.0.1
 * {%ajl MPOM-166 %} - upgrade maven-plugin-plugin to 3.5
 * {%ajl MPOM-170 %} - migrate to Git
 
Dependency upgrade:

 * {%ajl MPOM-173 %} - Upgrade mave-surefire/failsafe-plugin 2.20.1

Changes since version 18:

 * GitBox: [Changes since version 18][change-18]
 * GitHub: [Changes since version 18][change-github-18]


Enjoy,
    
-The Apache Maven team

[change-18]: https://gitbox.apache.org/repos/asf?p=maven-apache-parent.git;a=blobdiff;f=pom.xml;hb=apache-19;hpb=apache-18
[change-github-18]: https://github.com/apache/maven-apache-parent/compare/apache-18...apache-19

