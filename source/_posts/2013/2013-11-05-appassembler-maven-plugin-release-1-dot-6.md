---
layout: post
title: "Appassembler Maven Plugin 1.6 released"
date: 2013-11-05 20:02
comments: true
categories: [Maven, News, Maven-Plugins,Maven-Plugin-Releases]
---
The new release of the [Appassembler Maven Plugin 1.6](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
contains a number of bug fixes, improvements and a new feature.

<!-- more -->

The following bugs are fixed:

 * {% chjl MAPPASM-188 %} - Empty CLASSPATH_PREFIX adds current directory to classpath
 * {% chjl MAPPASM-204 %} - Support Solaris x86_64 - Commercial JSW only
 * {% chjl MAPPASM-208 %} - binFolder configuration is not used to generate path to environment setup file.
 * {% chjl MAPPASM-211 %} - Null pointer exception when providing empty <commandLineArgument>

The following improvements:

 * {% chjl MAPPASM-59 %} - appassembler chmod and bat file creation
 * {% chjl MAPPASM-202 %} - Deprecate program.name in favor of program.id
 * {% chjl MAPPASM-207 %} - Add CONFIGDIR environment variable for configurationDirectory property in scripts
 * {% chjl MAPPASM-209 %} - Allow <generateRepository>false</generateRepository> for JSW daemons

New Feature

 * {% chjl MAPPASM-206 %} - Support endorsed lib folder

The change log can visited on the following 
[site](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11780&version=19575).
