---
layout: post
title: "Appassembler Maven Plugin 1.4 released"
date: 2013-07-10 12:15:00
tags: Neuigkeiten,BM,Maven
categories: [Neuigkeiten,BM,Maven,Maven-Plugins]
post-type: blog
---
The new release of the [Appassembler Maven Plugin 1.4](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
has now the ability to use an external delta package instead of the internal one and the support for chkconfig settings
for unix script.
<!-- more -->

The following bug has been solved:

  * [MAPPASM-184](http://jira.codehaus.org/browse/MAPPASM-184) windows x86-32 native wrapper get picked up on x86_64 in the generated jsw script Improvement

The following improvemet has been done:

  * [MAPPASM-173](http://jira.codehaus.org/browse/MAPPASM-173) windows x64 should use x64 wrapper

And the following new features have been added:

  * [MAPPASM-198](http://jira.codehaus.org/browse/MAPPASM-198) Add Ability to extract external delta pack
  * [MAPPASM-200](http://jira.codehaus.org/browse/MAPPASM-200) Add ability to configure the chkconfig settings for unix script

