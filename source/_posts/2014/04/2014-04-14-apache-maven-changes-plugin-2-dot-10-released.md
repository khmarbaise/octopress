---
layout: post
title: "Apache Maven Changes Plugin 2.10 Released"
date: 2014-04-14 21:56
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Maven team is pleased to announce the release of 
the [Apache Maven Changes Plugin, version 2.10](http://maven.apache.org/plugins/maven-changes-plugin/).

Creates a release history for inclusion into the site and assists in generating an announcement mail.


You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-changes-plugin</artifactId>
  <version>2.10</version>
</plugin>
```

[Release Notes - Apache Maven Changes Plugin - Version 2.10](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11212&version=19130&styleName=Html)

Bugs:

 * {% chjl MCHANGES-329 %} RestJiraDownloader does not handle components, type, updated or version
 * {% chjl MCHANGES-326 %} announcement-mail does not respect templateEncoding
 * {% chjl MCHANGES-324 %} Plugin logs into JIRA, but doesn't seem to make the status request with the session
 * {% chjl MCHANGES-323 %} Incompatible Jira Issue Management URL suggested in documentation
 * {% chjl MCHANGES-280 %} announcement-mail broken when using the announcementFile parameter
 * {% chjl MCHANGES-266 %} It is not possible to disable the reports in submodules

Improvements:

 * {% chjl MCHANGES-328 %} Allow setting useJql parameter from the command line
 * {% chjl MCHANGES-303 %} Add an option to enable tls
 * {% chjl MCHANGES-282 %} New parameter releaseDateLocale in changes-check goal

New Feature:

 * {% chjl MCHANGES-292 %} announcement-generate goal doesn't respect useJql parameter

Task:

 * {% chjl MCHANGES-332 %} Update to maven-reporting-impl 2.2
 * {% chjl MCHANGES-331 %} Update to Doxia 1.4 and Doxia Sitetools 1.4


Enjoy,

-The Maven team
