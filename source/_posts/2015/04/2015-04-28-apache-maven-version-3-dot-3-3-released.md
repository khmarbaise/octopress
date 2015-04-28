---
layout: post
title: "Apache Maven Version 3.3.3 Released"
date: 2015-04-28 20:20
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Releases]
---
The new [Maven 3.3.3 Release is out](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12316922&version=12332054).

Bugs:

 * {% ajl MNG-5605 %} - ssh-wagon hangs
 * {% ajl MNG-5793 %} - same class realm registered both with plugin and extensions realm caches
 * {% ajl MNG-5795 %} - Maven extensions can not be retrieved from authenticated repositories
 * {% ajl MNG-5797 %} - 'mvn deploy' sends HTTP User-Agent twice

Improvements:

 * {% ajl MNG-5794 %} - Warn about Proxies with duplicate id, but different protocols
 * {% ajl MNG-5808 %} - Upgrade Maven to use Wagon 2.9

- The Apache Maven Team.
