---
layout: post
title: "NAR Plugin For Maven 3.2.0"
date: 2014-10-03 21:04
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Dear Maven users,

it is a great honor to announce a new version of the NAR plugin for Maven,
designed to support cross-platform development using JNI libraries.

As always, this release would not be possible without a thriving developer
community.  Here is the shortlog:

 * 26  Johannes Schindelin
 * 21  Fredrik Orderud
 * 14  Curtis Rueden
 *  8  HongKee Moon
 *  5  Benson Margulies
 *  2  Sevag Doniguian
 *  1  Wouter Pasman
 *  1  Ivan Drobyshevskyi
 *  1  Mark Hiner
 *  1  Philippe Marschall
 *  1  Tomasz Krakowiak
 *  1  Trevor Robinson

These are the changes since version 3.1.0 (the parenthesized numbers refer
to pull requests of https://github.com/maven-nar/nar-maven-plugin).

Bug fixes:

- The description of the examples now mentions explicitly that they are
  integration tests (#109)

- We use a newer maven-site-plugin version to fix a breakage (#113)

- The documentation now talks about narSystemPackage where it talked
  about the non-existent packageName before (#110)

- The licensing was cleaned up (#120)

- We now use the more appropriate msvc label for Microsoft Visual C/C++
  instead of devstudio (#123)

- The history.xml file included into the .nar artifacts is now actually
  properly named, and as a consequence properly populated, too (#114)

- The documentation no longer references the incorrect <arch> tag but
  correctly calls it <architecture> (#132)

- The web site no longer suggests that the NAR plugin is an official
  Apache project (this was the original intention, but it never became
  reality) (#133)

- On Windows, inconsistent usage of the environment variable Path was
  fixed (#134)

- Fixed dead links in the documentation (#136)

- Grammar sweep of the documentation (#137)

Improvements:

- A new integration test demonstrates how to use a JNI .nar from a .jar
  file (#112)

- The AOL properties are now documented (#115)

- It is now possible to filter which headers are included in the
  artifacts (#124)

- We joined the 21st century by using generics now (#127)

- It is now possible to develop NAR projects in Eclipse even if they use
  the NarSystem class (#130)

- We now use the Maven 3.0.4 platform (#118)

- Support was added for the VisualAge compiler on AIX (#131)

- The web site now uses the very pretty fluido skin and sports the NAR
  logo prominently (#133)

The new look of the web site can be adored here:
https://maven-nar.github.io/

On behalf of all the developers making the NAR plugin awesome,
Johannes

