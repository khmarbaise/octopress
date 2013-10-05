---
layout: post
title: "Maven Release 3.1.1 Released"
date: 2013-10-05 14:22
comments: true
categories: [Maven,News]
---

After a while a new [Maven Release 3.1.1](http://maven.apache.org/docs/3.1.1/release-notes.html) is 
now [available](http://maven.apache.org/download.cgi).

[The Maven Team](http://maven.40175.n5.nabble.com/ANN-Maven-3-1-1-Release-td5772451.html) has fixed the following bugs:

 * {% chjl MNG-5459 %} - failure to resolve pom artifact from snapshotVersion in maven-metadata.xml
 * {% chjl MNG-5495 %} - API incompatibility causes Swagger Maven Plugin (and others) to fail under Maven 3.1.0
 * {% chjl MNG-5499 %} - maven-aether-provider leaks Sisu Plexus and ObjectWeb classes onto the classpath when they are not required
 * {% chjl MNG-5500 %} - help for --legacy-local-repository option explains \_maven.repositories instead of \_remote.repositories
 * {% chjl MNG-5503 %} - Maven 3.1.0 fails to resolve artifacts produced by reactor build
 * {% chjl MNG-5509 %} - org.apache.maven.repository.legacy.DefaultWagonManager should set User-Agent
