---
layout: post
title: "Apache Maven Wagon Version 3.1.0 Released"
date: 2018-06-08 08:15:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.1.0](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/wagon/download.cgi

<!-- more -->

[Release Notes - Maven Wagon - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12341302)

Bugs:
  
 * {%ajl WAGON-452 %} - RelaxedTrustStrategy does not handle multiple certificates
 * {%ajl WAGON-493 %} - Maven wagon-scm documentation is erroneous
 * {%ajl WAGON-495 %} - Fix checkoutDirectory leak
 * {%ajl WAGON-496 %} - site-deploy using wagon-ssh broke in 2.12 because of the fix for WAGON-465
 * {%ajl WAGON-497 %} - ScmWagon#put() strips parent dirs from the target path if they already exist in SCM
 * {%ajl WAGON-498 %} - ScmWagon should work in binary and shallow mode when possible
 * {%ajl WAGON-499 %} - apache-rat complains about Eclipse .checkstyle files
 * {%ajl WAGON-503 %} - Directory gives out of date error in putDirectory() to a non-empty Subversion repo
 * {%ajl WAGON-518 %} - AbstractHttpClientWagon#putFromStream() reads entire content to memory

New Feature:

 * {%ajl WAGON-501 %} - Add ScmGitExeWagonTest

Improvement:

 * {%ajl WAGON-482 %} - Use sparse files in HugeFileDownloadTest with Java 7

Task:

 * {%ajl WAGON-504 %} - switch from Git-WIP to Gitbox

Dependency upgrades:

 * {%ajl WAGON-505 %} - Upgrade SLF4J to 1.7.25
 * {%ajl WAGON-506 %} - Upgrade Jetty to 9.2.24.v20180105
 * {%ajl WAGON-507 %} - Upgrade Plexus Utils to 3.1.0
 * {%ajl WAGON-508 %} - Upgrade JUnit to 4.12
 * {%ajl WAGON-509 %} - Upgrade Commons IO to 2.6
 * {%ajl WAGON-510 %} - Upgrade parent to 31
 * {%ajl WAGON-511 %} - Upgrade Plexus Container Default to 1.7.1
 * {%ajl WAGON-512 %} - Upgrade EasyMock to 3.5.1
 * {%ajl WAGON-513 %} - Upgrade HttpClient to 4.5.5
 * {%ajl WAGON-514 %} - Upgrade HttpCore to 4.4.9
 * {%ajl WAGON-515 %} - Upgrade JSoup to 1.11.2
 * {%ajl WAGON-516 %} - Upgrade Jackrabbit WebDAV to 2.14.4
 * {%ajl WAGON-519 %} - Upgrade to SCM 1.10.0


Enjoy,

-The Apache Maven team

