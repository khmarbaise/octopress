---
layout: post
title: "Apache Doxia Version 1.7 Released"
date: 2016-02-10 19:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Components]
---
The Apache Maven team is pleased to announce the release of the [Apache Maven 
Doxia, version 1.7](https://maven.apache.org/doxia/doxia/)
(which will be used in a future 3.5 version of maven-site-
plugin)
 
Doxia is a content generation framework that provides powerful techniques for 
generating static and dynamic content, supporting a variety of markup 
languages.
 
You can download the appropriate sources etc. from the [download page](https://maven.apache.org/doxia/doxia/download.cgi).

<!-- more -->

[Release Notes - Maven Doxia - Version 1.7](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317230&version=12330561)

Bugs:

 * [DOXIA-482] - add an API to avoid translating APT source comments into output comments
 * [DOXIA-485] - Outdated links in xdoc format description
 * [DOXIA-508] - Format characters are interpreted in monospaced text
 * [DOXIA-524] - ISO-8859-15 encoding problem with markdown 
 * [DOXIA-537] - NullPointerException parsing table cell with single space

Improvements:

 * [DOXIA-203] - Add support for level 6 sections and generalize Sink API for sections
 * [DOXIA-492] - Add support for doxia macros in markdown documents.
 * [DOXIA-505] - Upgrade to Commons Configuration 1.10
 * [DOXIA-527] - Allow multiple extensions for given format
 * [DOXIA-529] - Add macro support to XHTML 

New Features:

 * [DOXIA-224] - Add source name in parser
 * [DOXIA-532] - Update handling of comments for Server Side Includes (ie comments starting with #)
 * [DOXIA-535] - Support .markdown file extension (in addition to current .md)

Tasks:

 * [DOXIA-511] - remove deprecated o.a.m.doxia.module.site package
 * [DOXIA-526] - remove xerces:xercesImpl dependency
 * [DOXIA-531] - improve MacroRequest API with parser and sourceContent parameters requirements

Wish:

 * [DOXIA-506] - move classes from doxia-core in sink package (same as doxia-sink-api) to dedicated sink.impl package


Enjoy,
 
-The Apache Maven team
