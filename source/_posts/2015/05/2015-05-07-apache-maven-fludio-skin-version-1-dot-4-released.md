---
layout: post
title: "Apache Maven Fludio Skin Version 1.4 Released"
date: 2015-05-07 20:08
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Fluido Skin Version 1.4](http://maven.apache.org/skins/maven-fluido-skin/).

The Apache Maven Fluido Skin is an Apache Maven site skin built on top of
Twitter's Bootstrap 2.3.2.

Please be aware of the new location of our issue tracker
which has been moved from Codehaus to Apache Software Foundation

``` xml
<skin>
  <groupId>org.apache.maven.skins</groupId>
  <artifactId>maven-fluido-skin</artifactId>
  <version>1.4</version>
</skin>
```

<!-- more -->

[Release Notes - Apache Maven Fluido Skin - Version 1.4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317926&version=12331574)


Bugs:

 * {% ajl MSKINS-81 %} - Decoration model body/footer not correctly implemented by site.vm
 * {% ajl MSKINS-86 %} - class prettyprint not added to pre tags
 * {% ajl MSKINS-92 %} - Facebook Like iframe too narrow when in topbar
 * {% ajl MSKINS-93 %} - Wrong file extension for 'apache-maven-project-2.png'

Improvements:

 * {% ajl MSKINS-91 %} - Should use as possible https resources
 * {% ajl MSKINS-110 %} - Changed size of left navigation bar

New Feature:

 * {% ajl MSKINS-90 %} - Upgrade Jquery to 1.10.2

Tasks:

 * {% ajl MSKINS-74 %} - Upgrade jQuery to v1.9.1
 * {% ajl MSKINS-96 %} - Downgrade to Bootstrap 2.3.x
 * {% ajl MSKINS-99 %} - Upgrade jQuery to 1.11.2

Enjoy,

-The Apache Maven team
