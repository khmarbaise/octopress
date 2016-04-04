---
layout: post
title: "Apache Maven Changes Plugin Version 2.12 Released"
date: 2016-04-04 19:20:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Changes Plugin, Version 2.12](http://maven.apache.org/plugins/maven-changes-plugin).


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-changes-plugin</artifactId>
  <version>2.12</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Changes Version 2.12](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317222&version=12330385).

Bugs:

 * {% ajl MCHANGES-346 %} -  Update plexus-interpolation for thread safety issues
 * {% ajl MCHANGES-354 %} -  The plugin should fail to execute if the changes.xml file cannot be parsed
 * {% ajl MCHANGES-358 %} -  Remove dependency resolution ResolutionScope.TEST  from AnnouncementMojo
 * {% ajl MCHANGES-361 %} -  GitHub issue ids don't appear in announcement.vm
 * {% ajl MCHANGES-364 %} -  DueTo is always empty
 * {% ajl MCHANGES-368 %} -  Report page has unneccessary indentations when having empty releases

Improvements:

 * {% ajl MCHANGES-305 %} -  Provide support for private Github repos
 * {% ajl MCHANGES-345 %} -  Upgrade maven-filtering to 1.2
 * {% ajl MCHANGES-347 %} -  Upgrade maven-filtering to 1.3
 * {% ajl MCHANGES-355 %} -  Upgrade plexus-utils to 3.0.22
 * {% ajl MCHANGES-356 %} -  Upgrade org.eclipse.egit.github.core to 2.1.5
 * {% ajl MCHANGES-363 %} -  Add support for opened issues in announcement Mojo


Enjoy,

-The Apache Maven team
