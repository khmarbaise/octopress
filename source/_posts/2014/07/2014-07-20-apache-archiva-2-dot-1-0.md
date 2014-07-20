---
layout: post
title: "Apache Archiva 2.1.0"
date: 2014-07-20 11:26
comments: true
categories: [Neuigkeiten,BM,Maven]
---
Hi,

The Apache Archiva team would like to announce the release of 
[Archiva 2.1.0. Archiva](http://archiva.apache.org).

Archiva is an application for managing one or more remote
repositories, including administration, artifact handling, browsing
and searching.

If you have any questions, please consult:

the web site: http://archiva.apache.org/
the archiva-user mailing list: http://archiva.apache.org/mail-lists.html

New in Archiva 2.1.0

Apache Archiva 2.1.0 is a bugs fix release:

NOTE: jdk 1.7 is now prerequisite with Apache Archiva 1.7

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

The Archiva 2.1.0 features set can be seen in the feature tour.

Changes in Archiva 2.1.0

Released: 20th July 2014

Improvements:

 * {% chjl MRM-1210 %} - Dependency tree should include the artifact type
 * {% chjl MRM-1558 %} - Please provide some UI element which shows degraded and/or badly connected remote repository
 * {% chjl MRM-1802 %} - Find a cache solution for browsing part (especially root browsing)
 * {% chjl MRM-1829 %} - Change default value of of AysncLogger strategy for log4j async
 * {% chjl MRM-1834 %} - Add limit to index search query to prevent unnecessary calculations
 * {% chjl MRM-1836 %} - Make search limit (maxCount) configurable via UI
 * {% chjl MRM-1843 %} - provide mechanism to obtain the latest version of an artifact

Bugs:

 * {% chjl MRM-887 %} - Start script has no valid "uname" option
 * {% chjl MRM-1809 %} - Users - Manage section sort by name doesn't work as expected
 * {% chjl MRM-1812 %} - Users - Manage section needs Sort by User Name, Sort by Full Name, and Sort by Email buttons
 * {% chjl MRM-1813 %} - Users - Manage section filters don't seem to work
 * {% chjl MRM-1823 %} - java 1.7 as prerequisite
 * {% chjl MRM-1824 %} - metadata storage using Cassandra
 * {% chjl MRM-1825 %} - MD5 hashes are for wrong file name
 * {% chjl MRM-1826 %} - Force Internet Explorer into Standards Mode
 * {% chjl MRM-1830 %} - Charset applied to binary repository HTTP responses
 * {% chjl MRM-1833 %} - Nullpointer when browsing artifacts which have dependencies with scope "import"
 * {% chjl MRM-1837 %} - DefaultArchivaConfiguration holds references to classes
 * {% chjl MRM-1841 %} - "Remember me" not working
 * {% chjl MRM-1842 %} - Remove per default log4j2 Async Logging
 * {% chjl MRM-1846 %} - Regression in 2.0.1 : uniqueVersion false not supported
 * {% chjl MRM-1849 %} - Unable to download -SNAPSHOT jars after 2.0.1 Upgrade


Have fun!
-- The Apache Archiva Team
