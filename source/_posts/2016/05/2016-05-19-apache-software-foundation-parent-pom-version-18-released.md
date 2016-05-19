---
layout: post
title: "Apache Software Foundation Parent POM Version 18 Released"
date: 2016-05-19 23:30
comments: true
categories: 
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 18](http://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

``` xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>18</version>
</parent>
```

<!-- more -->

Release Notes - Apache Software Foundation Parent POM - Version 18

Improvements:

 * [MPOM-60] - Add DEPENDENCIES file to the exclude rule for apache-rat-plugin
 * [MPOM-78] - Updated maven-assembly-plugin to 2.5.5
 * [MPOM-92] - Upgrade maven-clean-plugin to 2.6.1
 * [MPOM-93] - Upgrade maven-gpg-plugin to 1.6
 * [MPOM-94] - Upgrade maven-war-plugin to 2.6
 * [MPOM-98] - Upgrade maven-compiler-plugin version to 3.3
 * [MPOM-99] - Upgrade maven-dependency-plugin to 2.10
 * [MPOM-100] - Upgrade maven.compiler.source/target to 1.6
 * [MPOM-101] - Use HTTPS by default for snapshot repository
 * [MPOM-103] - upgrade maven-site-plugin to 3.5.1
 * [MPOM-108] - Upgrade all plugins to the latest versions
 * [MPOM-116] - Use https wherever possible

Tasks:

 * [MPOM-104] - Clean up src/site-docs/site.xml for MSITE 3.5.1
 * [MPOM-106] - Update maven-assembly-plugin
 * [MPOM-113] - Missing execution ids
 * [MPOM-114] - Missing groupId

Changes since version 17:

https://svn.apache.org/viewvc/maven/pom/tags/apache-18/pom.xml?r1=HEAD&r2=1675930&diff_format=h

Enjoy,
 
-The Apache Maven team

