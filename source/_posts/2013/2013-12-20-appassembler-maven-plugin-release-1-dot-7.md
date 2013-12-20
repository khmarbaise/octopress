---
layout: post
title: "Appassembler Maven Plugin 1.7777777 released"
date: 2013-12-20 23:00:00
comments: true
categories: [Maven, News, Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo Team is pleased to announce the new release 
of the [Appassembler Maven Plugin 1.7](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
which contains a number of bug fixes, improvements and a new feature.

The Application Assembler Plugin is a Maven plugin for generating
scripts for starting java applications.
All dependencies and the artifact of the project itself are placed in
a generated Maven repository in a defined assemble directory.
All artifacts (dependencies + the artifact from the project) are added
to the classpath in the generated bin scripts.

<!-- more -->

You can use the following Maven coordinates to get the latest version via Maven Central:

``` xml
<plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>appassembler-maven-plugin</artifactId>
     <version>1.7</version>
</plugin>
```

[Release Notes for Release 1.7](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=19642)

Fixed Bug:

 * {% chjl MAPPASM-215 %} - The environments variables in the generated batch file are not local.

Improvements:

 * {% chjl MAPPASM-195 %} - Support other methods of JSW integration than WrapperSimpleApp
 * {% chjl MAPPASM-210 %} - Allow copyConfigurationDirectory for both script and jsw
 * {% chjl MAPPASM-216 %} - Add option to pre insert a config fragment into wrapper.conf

New Features:

 * {% chjl MAPPASM-78 %} - Add support for JSW integration method 2
 * {% chjl MAPPASM-214 %} - Add ability to configure chkconfig run level

The Mojo Team.
