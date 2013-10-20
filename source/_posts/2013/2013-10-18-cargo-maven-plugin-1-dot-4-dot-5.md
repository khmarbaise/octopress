---
layout: post
title: "Cargo Maven Plugin 1.4.5 Released"
date: 2013-10-18 21:00
comments: true
categories: [Maven,Maven-Plugins,Maven-Plugin-Releases,News]
---

After a really short while a new bug fix release 1.4.5 for [Cargo](http://cargo.codehaus.org) has been released.
[The CARGO Team](http://thread.gmane.org/gmane.comp.java.cargo.devel/14457) has fixed the following bugs:
<!-- more -->
Bug

 * {% chjl CARGO-1222 %} - JBoss7xInstalledLocalContainer unable to stop container running on hostname other than localhost
 * {% chjl CARGO-1224 %} - Not all JVM options are supported for Glassfish
 * {% chjl CARGO-1228 %} - Issue with the display-name of web.xml for WARs inside EARs
 * {% chjl CARGO-1230 %} - NPE in when adding classpath entry for ResinRun

and the following improvements:

 * {% chjl CARGO-1223 %} - Add an option to disable the default Glassfish datasource
 * {% chjl CARGO-1225 %} - Remove the ${versionId} from the default WAR context / EAR names of Deployables
 * {% chjl CARGO-1226 %} - Add compatibility with JonAS 5.3.x
 * {% chjl CARGO-1227 %} - JBoss7xInstalledLocalContainer should allow override of "-mp" param via system property


The release notes can found [here](https://jira.codehaus.org/secure/ReleaseNote.jspa?styleName=Html&projectId=10730&version=19557).

