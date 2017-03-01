---
layout: post
title: "Apache Maven Version 3.5.0-alpha-1 Released"
date: 2017-03-01 19:04:31
comments: true
categories: [Neuigkeiten,BM,Maven]
---
The Apache Maven team would like to announce the release of [Maven 3.5.0-alpha-1](http://maven.apache.org/).

NOTE: This is an ALPHA release. There is the potential that features may be
added/removed between this release and the first GA release in the 3.5.x
release line.
Please consult the Known Issues section below before use

You can download the appropriate sources, etc. from the archives section on
the download page as Maven 3.3.9 is still the recommended GA release

https://archive.apache.org/dist/maven/maven-3/3.5.0-alpha-1/

[Release Notes for 3.5.0-alpha-1](https://maven.apache.org/docs/3.5.0-alpha-1/release-notes.html).

Known Issues

The following issues were identified during release testing of this ALPHA
release but have not been deemed as release blockers:

* {% ajl MNG-6177 %} The `--file` and `-f` option to specify a `pom.xml` to use
does not work if the path includes characters that need quoting such as
whitespace or `&`.
* {% ajl MNG-6115 %} If Maven is installed in a writable location, every build will
create a new `lib/ext/jansi-....` file.

Why not Maven 3.4.0?

After Maven 3.3.9 was released, the Eclipse Aether project was retired and
the code base was migrated to the Apache Maven project.

The original goal for the 3.4.0 release was to replace Aether with the
exact same code after migration to the Apache Maven project and then
proceed with bug fixes to the resolver code as well as other areas of Maven.

The migration of the code between the two foundations took longer than
expected and as a result there were other changes committed to Maven core
that were outside the scope of intent for 3.4.0.

In order to refocus on the original intent for 3.4.0, the decision was
taken to revert the Maven core history to the point of the 3.3.9 release
and merge in the desired changes one at a time.

Because there had been a lot of communication about different features
being delivered and bugs fixed in Maven 3.4.0 and the new history may not
contain them in the first release, the decision was taken to forever burn
the 3.4.x release line.

More detail on this decision can be read in the [mailing list archive](http://www.mail-archive.com/dev@maven.apache.org/msg112103.html).

<!-- more -->

[Release Notes - Maven - Version 3.5.0-alpha-1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?
projectId=12316922&version=12339664&styleName=Text)

Bugs:

 * {% ajl MNG-5297 %} - Site should tell 'prerequisites.maven is deprecated'
 * {% ajl MNG-5368 %} - UnsupportedOperationException thrown when version range is not correct in dependencyManagement definitions
 * {% ajl MNG-5629 %} - ClosedChannelException from DefaultUpdateCheckManager.read
 * {% ajl MNG-5815 %} - "mvn.cmd" does not indicate failure properly when using "&&"
 * {% ajl MNG-5823 %} - mvnDebug doesn't work with M2_HOME with spaces - missing quotes
 * {% ajl MNG-5829 %} - mvn shell script fails with syntax error on Solaris 10
 * {% ajl MNG-5836 %} - logging config is overridden by $M2_HOME/lib/ext/*.jar
 * {% ajl MNG-5852 %} - mvn shell script invokes /bin/sh but requires Bash functions
 * {% ajl MNG-5958 %} - java.lang.String cannot be cast to org.apache.maven.lifecycle.mapping.LifecyclePhase
 * {% ajl MNG-5961 %} - Maven possibly not aware of log4j2
 * {% ajl MNG-5962 %} - mvn.cmd fails when the current directory has spaces in between
 * {% ajl MNG-5963 %} - mvn.cmd does not return ERROR_CODE
 * {% ajl MNG-6022 %} - mvn.cmd fails if directory contains an ampersand (&)
 * {% ajl MNG-6053 %} - Unsafe System Properties copy in MavenRepositorySystemUtils, causing NPEs
 * {% ajl MNG-6105 %} - properties.internal.SystemProperties.addSystemProperties() is not really thread-safe
 * {% ajl MNG-6109 %} - PluginDescriptor doesn't read since value of parameter
 * {% ajl MNG-6117 %} - ${session.parallel} not correctly set
 * {% ajl MNG-6144 %} - DefaultWagonManagerTest#testGetMissingJarForced() passed incorrect value
 * {% ajl MNG-6166 %} - mvn dependency:go-offline fails due to missing transitive dependency jdom:jdom:jar:1.1
 * {% ajl MNG-6171 %} - REGRESSION: WARNING about usage of a non threadsafe marked plugin is not showed anymore
 * {% ajl MNG-6172 %} - Precedence of command-line system property options has changed

Dependency upgrades:

 * {% ajl MNG-5967 %} - Dependency updates
 * {% ajl MNG-6110 %} - Upgrade Aether to Maven Resolver

Improvements:

 * {% ajl MNG-5579 %} - Unify error output/check logic from shell and batch scripts
 * {% ajl MNG-5607 %} - Don't use M2_HOME in mvn shell/command scripts anymore
 * {% ajl MNG-5883 %} - Silence unnecessary legacy local repository warning
 * {% ajl MNG-5889 %} - .mvn directory should be picked when using --file
 * {% ajl MNG-5904 %} - Remove the whole Ant build
 * {% ajl MNG-5931 %} - Fixing documentation
 * {% ajl MNG-5934 %} - String handling issues identified by PMD
 * {% ajl MNG-5946 %} - Fix links etc. in README.txt which is part of the delivery
 * {% ajl MNG-5968 %} - Default plugin version updates
 * {% ajl MNG-5975 %} - Use Java 7's SimpleDateFormat in CLIReportingUtils#formatTimestamp
 * {% ajl MNG-5977 %} - Improve output readability of our MavenTransferListener implementations
 * {% ajl MNG-5993 %} - Confusing error message in case of missing/empty artifactId and version in pluginManagement
 * {% ajl MNG-6001 %} - Replace %HOME% with %USERPROFILE% in mvn.cmd
 * {% ajl MNG-6003 %} - Drastically reduce JAVA_HOME discovery code
 * {% ajl MNG-6014 %} - Removing ArtifactHandler for ejb3
 * {% ajl MNG-6017 %} - Removing ArtifactHandler for par LifeCycle
 * {% ajl MNG-6030 %} - ReactorModelCache do not used effectively after maven version 3.0.5 which cause a large memory footprint
 * {% ajl MNG-6032 %} - WARNING during build based on absolute path in assembly-descriptor.
 * {% ajl MNG-6068 %} - Document default scope compile in pom XSD and reference documentation
 * {% ajl MNG-6078 %} - Can't overwrite properties which have been defined in .mvn/maven.config
 * {% ajl MNG-6081 %} - Log refactoring - Method Invocation Replaced By Variable
 * {% ajl MNG-6102 %} - Introduce ${maven.conf} in m2.conf
 * {% ajl MNG-6145 %} -  Remove non-existent m2 include in component.xml
 * {% ajl MNG-6146 %} - Several small stylistic and spelling improvements to code and documentation
 * {% ajl MNG-6147 %} - MetadataResolutionResult#getGraph() contains duplicate if clause
 * {% ajl MNG-6150 %} - Javadoc improvements for 3.5.0
 * {% ajl MNG-6163 %} - Introduce CLASSWORLDS_JAR in shell startup scripts
 * {% ajl MNG-6165 %} - Deprecate and replace incorrectly spelled public API

New Features:

 * {% ajl MNG-3507 %} - ANSI color logging for improved output visibility
 * {% ajl MNG-5878 %} - add support for module name != artifactId in every calculated URLs (project, SCM, site): special project.directory property
 * {% ajl MNG-6093 %} - create a slf4j-simple provider extension that supports level color rendering

Tasks:

 * {% ajl MNG-5954 %} - Remove outdated maven-embedder/src/main/resources/META-INF/MANIFEST.MF
 * {% ajl MNG-6106 %} - Remove maven.home default value setter from m2.conf
 * {% ajl MNG-6136 %} - Upgrade Maven Wagon from 2.10 to 2.12
 * {% ajl MNG-6137 %} - Clean up duplicate dependencies caused by incomplete Wagon HTTP Provider exclusions
 * {% ajl MNG-6138 %} - Remove obsolete message_*.properties form maven-core
 * {% ajl MNG-6140 %} - update documentation's dependency graph with resolver + resolver-provider + slf4j-provider
 * {% ajl MNG-6151 %} - Force Push master from 737de43e392fc15a0ce366db98d70aa18b3f6c03
 * {% ajl MNG-6152 %} - Add a Jenkinsfile so that builds.apache.org can use multibranch pipeline

Wishes:

 * {% ajl MNG-2199 %} - Support version ranges in parent elements
 * {% ajl MNG-6088 %} - after forked execution success, add an empty line
 * {% ajl MNG-6092 %} - warn if prerequisites.maven is used for non-plugin projects

Enjoy,

- The Apache Maven team
