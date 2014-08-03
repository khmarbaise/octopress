---
layout: post
title: "Apache Maven Assembly Plugin Version 2.4.1 Released"
date: 2014-08-03 21:08
comments: true
categories: 
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Assembly Plugin, version 2.4.1](http://maven.apache.org/plugins/maven-assembly-plugin).

The Assembly Plugin for Maven is primarily intended to allow users to aggregate
the project output along with its dependencies, modules, site documentation,
and other files into a single distributable archive.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <version>2.4.1</version>
</plugin>
```
<!-- more -->

[Release Notes - Maven Assembly Plugin Version 2.4.1](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11126&version=20438)

Bugs:

 * {% chjl MASSEMBLY-637 %} - fileSet <lineEnding>unix</lineEnding> strips last newline of file
 * {% chjl MASSEMBLY-651 %} - REOPEN - OutOfMemory when running maven-assembly-plugin
 * {% chjl MASSEMBLY-652 %} - Resource filtering does not work if line contains single @
 * {% chjl MASSEMBLY-696 %} - Internal Regexp Error with Windows Paths

Improvements:

 * {% chjl MASSEMBLY-639 %} - Change default for recompressZippedFIles back to true
 * {% chjl MASSEMBLY-682 %} - Make a link to the MavenArchiver documentation
 * {% chjl MASSEMBLY-686 %} - Update version of maven-filtering to 1.2
 * {% chjl MASSEMBLY-687 %} - Change the prefered location for assembly descriptors and filter files
 * {% chjl MASSEMBLY-690 %} - Think about WARNING for module dependencies
 * {% chjl MASSEMBLY-693 %} - Update XSD Versions in examples
 * {% chjl MASSEMBLY-694 %} - Generation of the site does not work with Maven 3.2.1

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
