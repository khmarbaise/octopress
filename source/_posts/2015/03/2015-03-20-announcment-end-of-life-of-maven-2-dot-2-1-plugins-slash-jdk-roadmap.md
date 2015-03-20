---
layout: post
title: "Announcment: End Of Life of Maven 2.2.1 - Plugins / JDK Roadmap"
date: 2015-03-20 22:40
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Dear Maven Users,

based on the End of Life of Maven 2.2.1 (a year ago) now the time has
come to make the final releases of Apache Maven Plugins which support
Maven 2.X.

If you continue to use Maven 2.2.1 or earlier you have to be aware of
using an completely unsupported Maven version as well as unsupported
Maven plugins for the future.

If you want to have access to new features and bug fixes it is really
necessary to update to new Maven versions.

The next Maven version which will go the same way as Maven 2.2.1 
will be Maven 3.0.5.

We have documented the final releases of plugins which support Maven
2.2.1 in relationship with JDK 1.5.

The complete list can be found here:

http://maven.apache.org/maven-2.x-eol.html

The next step on our roadmap is to lift all plugin versions to 3.0.0 to
make clear those plugins will only work with Maven 3.0+ furthermore the
Java minimum requirement will be lifted to JDK 1.6 as well.

No "rule" without exceptions. Here they come:

 * maven-site-plugin (Version 3.4)
   See the docs of the plugin for usage in Maven 2.X

 * maven-compiler-plugin (Version 3.2)
   which works with Maven 2.2.1.

 * maven-plugin-plugin (Version 3.4)
   which works with Maven 2.2.1

 * maven-pmd-plugin (Version 3.4)
   which works with Maven 2.2.1 but needs JDK 1.6

The following plugins already have the Maven 3.0+ requirement:

* maven-scm-publish-plugin (Version 1.1)
* maven-shade-plugin (Version 2.3)

Currently the plan is to make those plugins which are already at 3.X
being lifted to version 3.5.0 for Maven 3.X only:

 * maven-site-plugin (Version 3.5.0)

 * maven-compiler-plugin (Version 3.5.0)

 * maven-plugin-plugin (Version 3.5.0)

 * maven-pmd-plugin (Version 3.5.0)

All other plugins will get a version 3.0.0 to identify Maven 3.X only
plugins and the JDK minimum will be 1.6.

Example:
  So to make things more clearer here is an example:

  Currently we have the maven-clean-plugin with version 2.6.1.

  This plugin supports Maven 2.2.1 and JDK 1.5 minimum.

  This plugin will get a new major release with version 3.0.0 
  which has the Maven minimum 3.0 AND Java minimum 1.6.

Kind regards 
- The Apache Maven Team 
