---
layout: post
title: "Apache Maven 3.6.0 Released"
date: 2018-11-01 13:15:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Releases]
---
The Apache Maven team is pleased to announce the release of the Apache
Maven 3.6.0.

Apache Maven is a software project management and comprehension tool. Based
on the concept of a project object model (POM), Maven can manage a
project's build, reporting and documentation from a central piece of
information.

You can find out more about Apache Maven at https://maven.apache.org

You can download the appropriate sources etc. from 
the [download page](https://maven.apache.org/download.cgi)

<!-- more -->

Code Contributors of this release:

 * Christoph Kunze
 * David Churcher

Issue Reporters of this release:

 * Richard van der Hoff
 * Jörg Sesterhenn
 * Andreas Sewe
 * David Churcher
 * Adam John Burley
 * Alexander Griesbaum
 * Christoph Amshoff
 * Seckin Onur Selamet
 * Phillip Webb
 * John Canny
 * Hoa Phan

Many thanks to contributors and reporters for the support and time.

Participants to the VOTE of the Maven 3.6.0 Release:

 * Filipe Sousa 
 * Eric Lilja
 * Enrico Olivelli
 * Gary Gregory
 * Thomas Collignon

Many thanks to those who tested the Maven releases 
and thanks for their support as well.

[Release Notes - Maven - Version 3.6.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12316922&version=12338966)

Bugs:

 * {%ajl MNG-6311 %} - Maven intolerably slow when import scope used heavily in large project
 * {%ajl MNG-6358 %} - Maven build should not require access to apache.org
 * {%ajl MNG-6383 %} - ProjectBuilder unnecessarily rebuilds modules with ci-friendly versions
 * {%ajl MNG-6412 %} - Exceeding project discovery time when using CI friendly versions
 * {%ajl MNG-6415 %} - Project Artifacts Cache does not retain the order of classpath entries.
 * {%ajl MNG-6472 %} - Mockito cannot mock this class: interface org.eclipse.aether.impl.RepositoryEventDispatcher
 * {%ajl MNG-6490 %} - Maven shall not fail reporting circular dependency when the dependency is a classified secondary artifact

Improvements:

 * {%ajl MNG-4508 %} - No way to avoid adding artifactId to site urls
 * {%ajl MNG-5951 %} - add an option to avoid path addition to inherited URLs
 * {%ajl MNG-6059 %} - Important use cases not covered, as child.inherit.append.path affects all children
 * {%ajl MNG-6164 %} - Collections inconsistently immutable
 * {%ajl MNG-6391 %} - Printout version of last built module in reactor build
 * {%ajl MNG-6414 %} - Add more Apache license header patterns to skip downloading Apache license
 * {%ajl MNG-6467 %} - Remove plugin definition from pom file which is inherited
 * {%ajl MNG-6480 %} - Eclipse.org site is down, and you are unable to build Maven?
 * {%ajl MNG-6492 %} - Minor improvement on Array construction, converson

Task:

 * {%ajl MNG-6475 %} - Remove guava dependencies

Dependency upgrades:

 * {%ajl MNG-6424 %} - Upgrade plexus-interpolation to 1.25
 * {%ajl MNG-6449 %} - Upgrade parent to 32
 * {%ajl MNG-6473 %} - Update Mockito to 2.21.0
 * {%ajl MNG-6478 %} - Upgrade parent to 33 for sha512 checksum on release
 * {%ajl MNG-6479 %} - Upgrade XMLUnit to 2.2.1
 * {%ajl MNG-6486 %} - Upgrade to Wagon 3.2.0
 * {%ajl MNG-6489 %} - Upgrade Maven Resolver to 1.3.0
 * {%ajl MNG-6491 %} - Upgrade commons-lang3 to 3.8.1
 * {%ajl MNG-6496 %} - Upgrade Maven Resolver to 1.3.1
 * {%ajl MNG-6497 %} - Upgrade guice to 4.2.1


- The Apache Maven team

