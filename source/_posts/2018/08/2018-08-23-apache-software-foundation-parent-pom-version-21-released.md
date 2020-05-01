---
layout: post
title: "Apache Software Foundation Parent POM Version 21 Released"
date: 2018-08-23 09:23:00
comments: true
categories: asf,pom
---
The Apache Maven team is pleased to announce the release of the 
[Apache Software Foundation Parent POM Version 21](https://maven.apache.org/pom/asf/).

You should specify the version in your project as parent like the following:

``` xml
<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>21</version>
</parent>
```
You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/asf/download.html


<!-- more -->

Release Notes - Maven POMs - Version ASF-21

The Apache Maven team is pleased to announce the release of the Apache Software Foundation Parent POM Version 21.

https://maven.apache.org/pom/asf/

You should specify the version in your project as parent like the following:

<parent>
   <groupId>org.apache</groupId>
   <artifactId>apache</artifactId>
   <version>21</version>
</parent>

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/pom/asf/download.html


Release Notes - Maven POMs - Version ASF-21

New Feature:

 * {%ajl MPOM-205 %} - create SHA-512 checksum for source-release archive(s) in target/checkout/target/ during release

Changes since version 20:

 * GitBox: [Changes since version 20][change-21]
 * GitHub: [Changes since version 20][change-github-21]

Enjoy,
    
-The Apache Maven team

[change-21]: https://gitbox.apache.org/repos/asf?p=maven-apache-parent.git;a=blobdiff;f=pom.xml;hb=apache-21;hpb=apache-20
[change-github-21]: https://github.com/apache/maven-apache-parent/compare/apache-20...apache-21

