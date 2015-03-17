---
layout: post
title: "Apache Maven DOAP Version 1.2 Released"
date: 2015-03-17 20:44
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven DOAP Plugin, version 1.2](http://maven.apache.org/plugins/maven-doap-plugin/).

The DOAP Plugin is used to generate a compliant
[Description of a Project (DOAP)](http://usefulinc.com/doap) file from a POM.
The main goal is to be able to provide DOAP files for Semantic Web systems that
use them as primary input but that would also alleviate the burden of
maintaining two sets of metadata.


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-doap-plugin</artifactId>
  <version>1.2</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven DOAP Plugin - Version 1.2](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11310&version=17078)

Bugs:

 * {% chjl MDOAP-38 %} - <shortdesc> too long value provide better error message
 * {% chjl MDOAP-42 %} - Updated plexus-interpolation for thread safety issues

Improvements:

 * {% chjl MDOAP-39 %} - Upgrade to Maven 2.2.1 compatiblity
 * {% chjl MDOAP-40 %} - Upgrade to scm 1.9.1
 * {% chjl MDOAP-41 %} - Update version of plexus-utils to 3.0.18
 * {% chjl MDOAP-43 %} - Upgrade to scm 1.9.2
 * {% chjl MDOAP-44 %} - Upgrade plexus-utils to 3.0.20
 * {% chjl MDOAP-45 %} - Upgrade plexus-i18n to 1.0-beta-10

Task:

 * {% chjl MDOAP-37 %} - use maven-plugin-tools' java 5 annotations

Enjoy,

- The Apache Maven team
