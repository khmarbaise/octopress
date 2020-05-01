---
layout: post
title: "Apache Maven Release Plugin Version 3.0.0-M1 Released"
date: 2019-12-16 10:35:59
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Release, version 3.0.0-M1](https://maven.apache.org/maven-release/).

This plugin is used to release a project with Maven, saving a lot of
repetitive, manual work. Releasing a project is made in two steps: prepare and
perform.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-release-plugin</artifactId>
  <version>3.0.0-M1</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/maven-release/download.cgi

<!-- more -->

[Release Notes - Apache Maven Release Plugin - Version 3.0.0-M1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317824&version=12331214)

* Bugs:

  * {%ajl MRELEASE-229 %} - release:rollback is missing remove tag implementation
  * {%ajl MRELEASE-601 %} - The Maven 2 release plugin modifies CDATA elements in pom.xml files.
  * {%ajl MRELEASE-694 %} - -SNAPSHOT is unexpectedly appended to version in branched pom.xml
  * {%ajl MRELEASE-908 %} - Git HTTP authentication failing if there are spaces in the password
  * {%ajl MRELEASE-928 %} - exposing the password for SCM URL if build failed to commit files to SCM
  * {%ajl MRELEASE-947 %} - Wiki page URL for maven-release-plugin is wrong - post Codehaus termination
  * {%ajl MRELEASE-964 %} - Error injecting: org.apache.maven.shared.release.phase.RewritePomsForReleasePhase
  * {%ajl MRELEASE-966 %} - release plugin does not respect "mvn -f"
  * {%ajl MRELEASE-968 %} - Maven release plugin missing plexus-cipher dependency
  * {%ajl MRELEASE-975 %} - NPE when using an unknown project versionpolicy id
  * {%ajl MRELEASE-997 %} - Unable to release:perform on windows if a file name contains spaces on windows
  * {%ajl MRELEASE-1009 %} - Compilation failure when using Java 10
  * {%ajl MRELEASE-1034 %} - Remove SCM tag blocks rollback in some situations

* New Features:

  * {%ajl MRELEASE-956 %} - Release Strategy Interface
  * {%ajl MRELEASE-980 %} - Provide the ability to control commit messages
  * {%ajl MRELEASE-985 %} - Override SNAPSHOT dependencies from command line
  * {%ajl MRELEASE-998 %} - Add ability to create custom phases
  * {%ajl MRELEASE-1029 %} - update project.build.outputTimestamp property on prepare
  * {%ajl MRELEASE-1031 %} - display release phases to give insight on what's going on during release

* Improvements:

  * {%ajl MRELEASE-703 %} - [PATCH] Migration from obsolete plexus-maven-plugin to plexus-containers-component-metadata
  * {%ajl MRELEASE-873 %} - Remove possibly confusing non-standard goals from example
  * {%ajl MRELEASE-896 %} - Disable by default and deprecate useReleaseProfile parameter
  * {%ajl MRELEASE-909 %} - Add workItem/task support for scm deliver
  * {%ajl MRELEASE-958 %} - Using three digit version number (semver)
  * {%ajl MRELEASE-976 %} - release:branch should also support project version policies
  * {%ajl MRELEASE-977 %} - release:branch should prompt for branch name if none is given
  * {%ajl MRELEASE-979 %} - Support NamingPolicies to manage Branch and Tag names
  * {%ajl MRELEASE-992 %} - Deprecated maven flag --no-plugin-updates shows warnings in the console output
  * {%ajl MRELEASE-993 %} - Use shallow checkout per default (git scm)
  * {%ajl MRELEASE-994 %} - Drop Maven2 support
  * {%ajl MRELEASE-1005 %} - Extract ResourceGenerator from ReleasePhase
  * {%ajl MRELEASE-1007 %} - Rework usage workingDirectory and commonBasedir
  * {%ajl MRELEASE-1023 %} - Minor code cleanups
  * {%ajl MRELEASE-1032 %} - add https://m.a.o/xsd/maven-4.0.0.xsd schema instead of http://m.a.o/maven-v4_0_0.xsd

* Tasks:

  * {%ajl MRELEASE-356 %} - Deprecate the automated release profile
  * {%ajl MRELEASE-990 %} - switch to Git
  * {%ajl MRELEASE-1027 %} - New Release
  * {%ajl MRELEASE-1033 %} - Site: Dead link to wiki

* Dependency upgrades:

  * {%ajl MRELEASE-952 %} - Replace JDom as XML transformer
  * {%ajl MRELEASE-1010 %} - Upgrade maven-plugins parent to version 32
  * {%ajl MRELEASE-1024 %} - Upgrade to SCM 1.11.2
 
Enjoy,
 
-The Apache Maven team
