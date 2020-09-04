---
layout: post
title: "Apache Maven Project Info Reports Plugin Version 3.1.1 Released"
date: 2020-09-04 18:35:22
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Maven Project Info Reports Plugin version 3.1.1](https://maven.apache.org/plugins/maven-project-info-reports-plugin/)

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-project-info-reports-plugin</artifactId>
  <version>3.1.1</version>
</plugin>
```

You can download the appropriate sources etc. from the 
[download page](https://maven.apache.org/plugins/maven-project-info-reports-plugin/download.cgi).

<!-- more --> 

[Release Notes - Maven Project Info Reports Plugin - Version 3.1.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317821&version=12348345)

* Bugs:

  * {%ajl MPIR-374 %} - Unknown packaging: bundle when creating report
  * {%ajl MPIR-398 %} - Nonsense links created for mailing lists when mailto is empty

* Improvements:

  * {%ajl MPIR-393 %} - MailiingListReport.getArchiveServer is weird
  * {%ajl MPIR-394 %} - Link for Jenkins introduction should be updated to jenkins.io

Enjoy,

-The Apache Maven team 
