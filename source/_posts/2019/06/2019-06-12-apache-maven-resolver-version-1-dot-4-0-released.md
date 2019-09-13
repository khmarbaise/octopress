---
layout: post
title: "Apache Maven Resolver 1.4.0 Released"
date: 2019-06-12 23:45:07
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.3.3](https://maven.apache.org/resolver/index.html)

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

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.4.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12345229)

Bug:

* {%ajl MRESOLVER-86 %} - ResolveArtifactMojo from resolver example uses plugin repositories to resolve dependencies

New Features:

* {%ajl MRESOLVER-10 %} - New 'TransitiveDependencyManager' supporting transitive dependency management
* {%ajl MRESOLVER-33 %} - New 'DefaultDependencyManager' managing dependencies on all levels supporting transitive dependency management

Improvements:

* {%ajl MRESOLVER-7 %} - Download dependency POMs in parallel
* {%ajl MRESOLVER-84 %} - Add support for "release" qualifier
* {%ajl MRESOLVER-87 %} - Refresh examples to use maven-resolver artifacts for demo
* {%ajl MRESOLVER-88 %} - Code style cleanup to use Java 7 features

Enjoy,

- The Apache Maven team
