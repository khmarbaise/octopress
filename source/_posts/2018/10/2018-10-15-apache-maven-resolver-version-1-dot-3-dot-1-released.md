---
layout: post
title: "Apache Maven Artifact Resolver 1.3.1 Released"
date: 2018-10-15 20:25:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.3.1](https://maven.apache.org/resolver/index.html)

Apache Maven Artifact Resolver is a library for working with artifact
repositories and dependency resolution.

Maven Artifact Resolver deals with the specification of local repository,
remote repository, developer workspaces, artifact transports and artifact
resolution.

It is expected to be extended by concrete repository implementation, like Maven
Artifact Resolver Provider for Maven repositories or any other provider for
other repository formats.


You can download the appropriate sources etc. from the [download page](https://maven.apache.org/resolver/download.cgi).

<!-- more -->

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.3.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12344286)

Bug:

 * {%ajl MRESOLVER-60 %} - Possible NPE when calling RepositorySystemSession.getFileTransformerManager(

Enjoy,

- The Apache Maven team 
