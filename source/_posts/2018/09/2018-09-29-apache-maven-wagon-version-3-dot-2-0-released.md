---
layout: post
title: "Apache Maven Wagon Version 3.2.0 Released"
date: 2018-09-29 23:37:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.2.0](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/wagon/download.cgi).

<!-- more -->

[Release Notes - Maven Wagon - Version 3.2.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12343926)

Bugs:

 * {%ajl WAGON-478 %} - WebDavWagon accepts SC_OK for MKCOL
 * {%ajl WAGON-486 %} - Wagon fails to download artifacts if number of dropped pooled connections (by intermediate) are greater than default retry count
 * {%ajl WAGON-500 %} - Re-enable ScmCvsExeWagonTest

New Features:

 * {%ajl WAGON-526 %} - Make the retry handling of HttpClient configurable
 * {%ajl WAGON-531 %} - Add default TTL for HTTP connections

Improvement:

 * {%ajl WAGON-525 %} - Support for detecting and using of KiTTY's klink.exe and kscp.exe

Tasks:

 * {%ajl WAGON-527 %} - Drop custom user agent in WebDAV Wagon
 * {%ajl WAGON-528 %} - Extend and unify compression capabilities in HTTP (Lightweight) Wagon
 * {%ajl WAGON-529 %} - Clean up inconsistent status code and reason phrase handling
 * {%ajl WAGON-530 %} - Drop invalid header 'Expires'

Dependency upgrades:

 * {%ajl WAGON-532 %} - Upgrade Maven SCM to 1.11.1
 * {%ajl WAGON-533 %} - Upgrade HttpCore to 4.4.10
 * {%ajl WAGON-534 %} - Upgrade HttpClient to 4.5.6
 * {%ajl WAGON-535 %} - Upgrade EasyMock to 3.6
 * {%ajl WAGON-536 %} - Upgrade parent to 32

Enjoy,

-The Apache Maven team

