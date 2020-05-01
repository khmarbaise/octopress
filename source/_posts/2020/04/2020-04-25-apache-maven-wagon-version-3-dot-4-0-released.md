---
layout: post
title: "Apache Maven Wagon Version 3.4.0 Released"
date: 2020-04-25 11:30:25
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of 
[Apache Maven Wagon 3.4.0](https://maven.apache.org/wagon/).

Apache Maven Wagon is a transport abstraction that is used in Mavens
artifact and repository handling code.

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/wagon/download.cgi).

<!-- more -->

[Release Notes - Maven Wagon - Version 3.4.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12318122&version=12346512)

* Bugs:

  * {%ajl WAGON-568 %} - Fail to deploy on Sonatype OSS since Maven 3.5.4
  * {%ajl WAGON-573 %} - EntityUtils.consumeQuietly() never called on non-2xx status codes
  * {%ajl WAGON-576 %} - Retry handler docs are possibly wrong
  * {%ajl WAGON-582 %} - HttpMethodConfiguration#copy() performs a shallow copy only

* Improvements:

  * {%ajl WAGON-570 %} - Use RedirectStrategy from HttpClient rather than a custom approach
  * {%ajl WAGON-580 %} - Improve and unify exception messages by status code types throughout HTTP providers
  * {%ajl WAGON-585 %} - maven.wagon.http.ssl features documentation is incomplete
  * {%ajl WAGON-586 %} - make build Reproducible
  * {%ajl WAGON-588 %} - Handle 404 and 410 consistently in HTTP-based Wagon providers

* Task:

  * {%ajl WAGON-579 %} - Handle SC_UNAUTHORIZED and SC_PROXY_AUTHENTICATION_REQUIRED in all methods

* Dependency upgrades:

  * {%ajl WAGON-577 %} - Upgrade HttpCore to 4.4.13
  * {%ajl WAGON-578 %} - Upgrade HttpClient to 4.5.11
  * {%ajl WAGON-581 %} - Upgrade HttpClient to 4.5.12
  * {%ajl WAGON-589 %} - Upgrade Maven Shade Plugin to 3.2.3

Enjoy,

- The Apache Maven team

