---
layout: post
title: "Cargo Maven Plugin 1.4.5 Released"
date: 2013-10-18 21:00
comments: true
categories: [Maven,Maven-Plugins,News]
---

After a really short while a new bug fix release 1.4.5 for Cargo has been released.
[The CARGO Team](http://thread.gmane.org/gmane.comp.java.cargo.devel/14457) has fixed the following bugs:

Bug

    [CARGO-1222] - JBoss7xInstalledLocalContainer unable to stop container running on hostname other than localhost
    [CARGO-1224] - Not all JVM options are supported for Glassfish
    [CARGO-1228] - Issue with the display-name of web.xml for WARs inside EARs
    [CARGO-1230] - NPE in when adding classpath entry for ResinRun

Improvement

    [CARGO-1223] - Add an option to disable the default Glassfish datasource
    [CARGO-1225] - Remove the ${versionId} from the default WAR context / EAR names of Deployables
    [CARGO-1226] - Add compatibility with JonAS 5.3.x
    [CARGO-1227] - JBoss7xInstalledLocalContainer should allow override of "-mp" param via system property



 * {% chjl MNG-5459 %} - failure to resolve pom artifact from snapshotVersion in maven-metadata.xml
 * {% chjl MNG-5495 %} - API incompatibility causes Swagger Maven Plugin (and others) to fail under Maven 3.1.0
 * {% chjl MNG-5499 %} - maven-aether-provider leaks Sisu Plexus and ObjectWeb classes onto the classpath when they are not required
 * {% chjl MNG-5500 %} - help for --legacy-local-repository option explains \_maven.repositories instead of \_remote.repositories
 * {% chjl MNG-5503 %} - Maven 3.1.0 fails to resolve artifacts produced by reactor build
 * {% chjl MNG-5509 %} - org.apache.maven.repository.legacy.DefaultWagonManager should set User-Agent
The release notes: https://jira.codehaus.org/secure/ReleaseNote.jspa?styleName=Html&projectId=10730&version=19557
