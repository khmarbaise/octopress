---
layout: post
title: "Apache Maven Source Plugin Version 3.2.1 Released"
date: 2019-12-22 14:35:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Source Plugin, Version 3.2.1][home].

This plugin creates a jar archive of the source files of the current project.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-source-plugin</artifactId>
  <version>3.2.1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page][download].

<!-- more -->

[Release Notes - Apache Maven Source Version 3.2.1][release]

* Bugs:

  * [MSOURCES-122](https://issues.apache.org/jira/browse/MSOURCES-122) - ITs fail due to unexpected EOL characters when building release sources from the ZIP
  * [MSOURCES-123](https://issues.apache.org/jira/browse/MSOURCES-123) - files in maven-shared-archive-resources are added in non-reproducible order


Read https://maven.apache.org/guides/mini/guide-reproducible-builds.html for more information on Reproducible Builds with Maven.

Enjoy,

-The Apache Maven team

[download]: https://maven.apache.org/plugins/maven-source-plugin/download.html
[home]: https://maven.apache.org/plugins/maven-source-plugin/
[release]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317924&version=12346480
