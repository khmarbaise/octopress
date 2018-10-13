---
layout: post
title: "Apache Maven Artifact Resolver 1.3.0 Released"
date: 2018-10-09 23:45:55
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resolver, version 1.3.0](https://maven.apache.org/resolver/index.html)

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

[Release Notes - Maven Resolver - Version Maven Artifact Resolver 1.3.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12320628&version=12342803)

Bugs:

 * {%ajl MRESOLVER-45 %} - Git repo is gone/moved
 * {%ajl MRESOLVER-50 %} - Source repository coordinates incorrect

New Feature:

 * {%ajl MRESOLVER-46 %} - Add support InputStream/OutputStream transformers

Improvements:

 * {%ajl MRESOLVER-31 %} - Use the Felix Bundle Plugin to generate OSGi metadata
 * {%ajl MRESOLVER-35 %} - Move dependency collector and friends to subpackage in maven-resolver-impl
 * {%ajl MRESOLVER-36 %} - SLFJ - remove LoggerFactory from dependency injection
 * {%ajl MRESOLVER-42 %} - Use pre-compiled pattern in DefaultArtifact constructor
 * {%ajl MRESOLVER-47 %} - Link to older Aether Wiki in Eclipse on front page
 * {%ajl MRESOLVER-48 %} - Add default Travis CI configuration for Java 7, 8, 10

Task:

 * {%ajl MRESOLVER-44 %} - switch from Git-WIP to Gitbox

Dependency upgrades:

 * {%ajl MRESOLVER-51 %} - Upgrade maven-parent to version 32
 * {%ajl MRESOLVER-57 %} - Upgrade Jetty to 9.2.26.v20180806
 * {%ajl MRESOLVER-58 %} - Upgrade HttpClient to 4.5.6
 * {%ajl MRESOLVER-59 %} - Upgrade HttpCore to 4.4.10

Enjoy,

-The Apache Maven team 
