---
layout: post
title: "Apache Archiva Version 2.1.1 Released"
date: 2014-09-05 19:37
comments: true
categories: [Neuigkeiten,BM,Maven]
---
The Apache Archiva team is pleased to announce the release of 
[Archiva 2.1.1](http://archiva.apache.org/).
Archiva is available for download from the 
[web site](http://archiva.apache.org/).

Archiva is an application for managing one or more remote
repositories, including administration, artifact handling, browsing
and searching.

If you have any questions, please consult 
[archiva-user mailing list.](http://archiva.apache.org/mail-lists.html).
 
Apache Archiva 2.1.1 is a bugs fix release:

NOTE: jdk 1.7 is now prerequisite with Apache Archiva 2.1.1

Compatibility Changes

If upgrading from earlier versions of Archiva, the list of libraries
in wrapper.conf has changed. If you have customized your copy of
wrapper.conf, please update it for compatibility with the version
distributed with the current release.
As the database storage has been removed, you can remove the JNDI
entry for jdbc/archiva. After upgrading from a previous version, you
will have to run a full scan to populate the new JCR Repository. This
will be done on first start of Archiva.

Refer to the Upgrading Archiva guide for more information.

<!-- more -->

Release Notes

Bugs:

 * {% chjl MRM-1832 %} - RepositoryScannerTest#testDefaultRepositoryScanner fails on Linux with src release zip
 * {% chjl MRM-1853 %} - On first start up, you get a perpetual loading indicator.
 * {% chjl MRM-1854 %} - Last modified date is epoch on directory listing for a group
 * {% chjl MRM-1855 %} - "Loading" button never disappears when no one is logged in in some browsers
 * {% chjl MRM-1856 %} - archiva-cli does not work

Have fun!
-- The Apache Archiva Team
