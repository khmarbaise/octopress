---
layout: post
title: "Apache Software Foundation Parent POM Version 17 Released"
date: 2015-04-29 20:57
comments: true
categories: 
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 17](http://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

``` xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>17</version>
</parent>
```

<!-- more -->

[Release Notes - Apache Software Foundation Parent POM - Version 17](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12311250&version=12329009)

Bug:

 * {% ajl MPOM-69 %} - avoid Rat plugin warning

Improvement:

 * {% ajl MPOM-47 %} - Source release assembly can't do tar.gz only
 * {% ajl MPOM-64 %} - Change maven-source-goal from jar to jar-no-fork
 * {% ajl MPOM-65 %} - Add maven-war-plugin definition
 * {% ajl MPOM-66 %} - The ASF global pom should upgrade SUREFIRE@2.18.1
 * {% ajl MPOM-71 %} - remove Maven 2.x support in ASF parent
 * {% ajl MPOM-74 %} - Upgrade maven compiler source/target to 1.5
 * {% ajl MPOM-75 %} - Upgrade maven-resources-plugin to 2.7
 * {% ajl MPOM-76 %} - Upgrade maven-source-plugin to 2.4
 * {% ajl MPOM-77 %} - Upgrade maven-compiler-plugin to 3.2

[Changes since version 16](http://svn.apache.org/viewvc/maven/pom/tags/apache-17/pom.xml?r1=HEAD&r2=1639452&diff_format=h).

Enjoy,

-The Apache Maven team 
