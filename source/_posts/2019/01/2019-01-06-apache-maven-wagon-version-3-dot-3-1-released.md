---
layout: post
title: "Apache Maven Wagon Version 3.3.1 Released"
date: 2019-01-06 23:37:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.3.1](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/wagon/download.cgi).

<!-- more -->

[Release Notes - Maven Wagon - Version 3.3.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12344772)

Bugs:

 * {%ajl WAGON-538 %} - Basic authentication fails if the password contains non-ASCII characters
 * {%ajl WAGON-543 %} - wagon-ssh download hangs

Improvements:

 * {%ajl WAGON-537 %} - Maven transfer speed of large artifacts is slow due to unsuitable buffer strategy
 * {%ajl WAGON-539 %} - Explicitly register only supported auth schemes
 * {%ajl WAGON-540 %} - Switch to modern-day encoding (UTF-8) of auth credentials

Task:

 * {%ajl WAGON-544 %} - Work around JSch issue #122

Enjoy,

- The Apache Maven team

