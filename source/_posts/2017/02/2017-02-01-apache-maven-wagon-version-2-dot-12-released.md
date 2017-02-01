---
layout: post
title: "Apache Maven Wagon Version 2.12 Released"
date: 2017-02-01 09:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 2.12](http://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Maven's
artifact and repository handling code.

[Release Notes - Maven Wagon - Version 2.12](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12338924).

Bugs:

 * {% ajl WAGON-408 %} - ITs for #testSecuredGet() fail with Windows
 * {% ajl WAGON-426 %} - Fingerprints loss in known_hosts
 * {% ajl WAGON-439 %} - Jsch issue in java 1.7 and Kerberos-enabled ssh servers
 * {% ajl WAGON-449 %} - CLIENT not changed after setting PoolingHttpClientConnectionManager
 * {% ajl WAGON-469 %} - wagon-http does not enable Expect-Continue by default
 * {% ajl WAGON-475 %} - TransferEvent GET used instead of PUT and vice versa
 * {% ajl WAGON-476 %} - HTTP Provider follows redirects on PUT and may change request method
 * {% ajl WAGON-479 %} - Preemptive auth with HTTP Provider may fail because BasicScheme is added as completed=true to the AuthCache
 * {% ajl WAGON-480 %} - Non-threadsafe HttpClientContext is shared between threaded use of HttpClientWagon
 * {% ajl WAGON-481 %} - Sensitive (auth) information is not cleared when HttpClientWagon is disconnected
 * {% ajl WAGON-485 %} - ScpWagon parses file size to int causing overflow for large files

Improvements:

 * {% ajl WAGON-455 %} - Upgrade of 'plexus-utils' to version 3.0.23.
 * {% ajl WAGON-458 %} - Implementation for FTPS
 * {% ajl WAGON-460 %} - Upgrade plexus-utils to 3.0.24
 * {% ajl WAGON-464 %} - Upgrade jsch dependency to 0.1.51 or newer to support ECDSA host key typess
 * {% ajl WAGON-465 %} - wagon-ssh: add API option to check for remote exit code
 * {% ajl WAGON-466 %} - wagon-ssh: Better error message when ssh account is locked
 * {% ajl WAGON-467 %} - wagon-ssh: options to configure hostKeyChecking and PreferredAuthentications
 * {% ajl WAGON-472 %} - Upgrade Commons IO to 2.5
 * {% ajl WAGON-484 %} - Update WebDAV Provider naming

** Task
 * {% ajl WAGON-389 %} - Incorrect versions on gh-pages
 * {% ajl WAGON-447 %} - Remove Commons Lang 2 for a few cases
 * {% ajl WAGON-457 %} - Wagon tests fail on Windows because Subversion crashes on a test repo
 * {% ajl WAGON-470 %} - Update TLS certificates for HTTPS tests
 * {% ajl WAGON-471 %} - Clean up dependency mess (reported by dependency:analyze)
 * {% ajl WAGON-473 %} - Don't abuse IllegalArgumentException to intercept null input
 * {% ajl WAGON-474 %} - Upgrade and revise all tests for Jetty 8
 * {% ajl WAGON-483 %} - Upgrade SLF4J to 1.7.22


Enjoy,

-The Apache Maven team

