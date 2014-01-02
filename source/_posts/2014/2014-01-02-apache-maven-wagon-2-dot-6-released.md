---
layout: post
title: "Apache Maven Wagon Version 2.6 Released"
date: 2014-01-02 19:44
comments: true
categories: [News,BM,Maven,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Wagon, Version 2.6](http://maven.apache.org/wagon/)

The Wagon component provides communications between Maven and repositories.

Typically, to use a particular version of Wagon, you would add an
'extension' to your POM, such as:

<!-- more -->

[Release Notes - Apache Maven Wagon - Version 2.6](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10335&version=19578)

There have been solved 3 issues:

Improvement:

 * {% chjl WAGON-401 %} - Access Denied due to missing User-Agent
 * {% chjl WAGON-402 %} - Upgrade Apache HttpClient based wagon provider to HttpClient 4.3
 * {% chjl WAGON-403 %} - SSH agent support for wagon-ssh

