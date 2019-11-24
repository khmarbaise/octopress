---
layout: post
title: "Apache Maven Surefire Plugin Version 3.0.0-M4 Released"
date: 2019-11-17 18:20:12
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Surefire Plugin, version 3.0.0-M4](https://maven.apache.org/plugins/maven-surefire-plugin/).

The release contains 43 bug fixes.
Again we received contributions from the community in form of bug reports
and bug fixes. Thank you and keep them coming!

You should specify the version in your project's plugin configuration:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>3.0.0-M4</version>
</plugin>
```

or for failsafe:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-failsafe-plugin</artifactId>
  <version>3.0.0-M4</version>
</plugin>
```

or for surefire-report:

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-report-plugin</artifactId>
  <version>3.0.0-M4</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/surefire/download.cgi).


<!-- more -->

[Release Notes - Maven Surefire - Version 3.0.0-M4](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317927&version=12344668)

Bugs:

 * {%ajl SUREFIRE-1222 %} - ForkClient attempts to consume unrelated lines
 * {%ajl SUREFIRE-1464 %} - Failsafe plugin exposes slf4j-jdk14 dependency
 * {%ajl SUREFIRE-1534 %} - Surefire 2.21.0 ClassNotFoundException: org.apache.maven.plugin.surefire.StartupReportConfiguration using reuseForks set to false
 * {%ajl SUREFIRE-1546 %} - JUnit 5 runner does not honor JUnit 5 display names
 * {%ajl SUREFIRE-1664 %} - "plugin's wiki page" points to non-existing web page
 * {%ajl SUREFIRE-1669 %} - POJO tests do not call fixture methods setUp and tearDown and test instances are not new between tests
 * {%ajl SUREFIRE-1670 %} - wrong "Filtering by Test Class Names" in failsafe "Using JUnit 5 Platform" page
 * {%ajl SUREFIRE-1675 %} - Forked JVM terminates with 'halt' when another module's tests fail
 * {%ajl SUREFIRE-1679 %} - Caching of provider classpath with module-specific changes may break test bootstrapping in subsequent modules
 * {%ajl SUREFIRE-1684 %} - The documentation of Maven Surefire Report Plugin contains wrong number of plugin goals
 * {%ajl SUREFIRE-1689 %} - The fast PpidChecker is switched to the slow 30 seconds PING after the subprocess (/bin/ps -o etime= -p ...) failed with exit 1
 * {%ajl SUREFIRE-1690 %} - Typo fixed: classpathDependencyExclude
 * {%ajl SUREFIRE-1701 %} - Surefire / Failsafe rerun failed tests functionality fails with JUnit 5 if using @DisplayName
 * {%ajl SUREFIRE-1707 %} - Forked JVM is killed when GC paused the tests for over 30 seconds
 * {%ajl SUREFIRE-1712 %} - Running tests with JDK13 fails with Unsupported class file major version 57
 * {%ajl SUREFIRE-1716 %} - JUnit5 Parameterized tests and re-run should see unique test runs with different parameters


New Features:

 * {%ajl SUREFIRE-1584 %} - Rerun Failing Tests with JUnit 5
 * {%ajl SUREFIRE-1705 %} - new config parameter Exclude Environment Variables
 * {%ajl SUREFIRE-1711 %} - Support @ParameterizedTest for JUnit 5 test reruns
 * {%ajl SUREFIRE-1717 %} - Enable Process Checkers

Improvements:

* {%ajl SUREFIRE-1004 %} - Enhance pattern/wildcard capabilities for dependenciesToScan to GAVT
* {%ajl SUREFIRE-1585 %} - Align JUnit Platform version at runtime
* {%ajl SUREFIRE-1617 %} - Surefire fails with bad message when path contains colon
* {%ajl SUREFIRE-1619 %} - FileReporter should not use PintWriter because i/o errors are not thrown
* {%ajl SUREFIRE-1620 %} - Replaced deprecated component ArtifactFactory with RepositorySystem
* {%ajl SUREFIRE-1634 %} - Add missing since tags to excludesFile and includesFile
* {%ajl SUREFIRE-1635 %} - Set properties readonly where it doesn't make sense to change values
* {%ajl SUREFIRE-1647 %} - When using junit5, delay loading testClass and use myown classLoader
* {%ajl SUREFIRE-1666 %} - printSummary=false does not completely suppress the summary on the console
* {%ajl SUREFIRE-1668 %} - The stackTrace should use CDATA in XML report.
* {%ajl SUREFIRE-1682 %} - Default value for config parameter 'shutdown' should change from 'testset' to 'exit'
* {%ajl SUREFIRE-1702 %} - \[JDK 11 Alpine Linux\] JAR content is not flushed completely down to drive "Error: Invalid or corrupt jarfile target/surefire/surefirebooter13749914711390838584.jar"
* {%ajl SUREFIRE-1703 %} - \[JDK 11 Alpine Linux\] Surefire handled random order of pid and /procps does not filter pid on busybox distributions
* {%ajl SUREFIRE-1704 %} - \[JDK 11 Alpine Linux\] long etime within hours has format 2h01 on busybox

Tasks:

* {%ajl SUREFIRE-1678 %} - JUnit5 Integration Tests should test wide spectrum of versions
* {%ajl SUREFIRE-1683 %} - Buildfix: TLS 1.2 passed to maven-invoker-plugin via system property
* {%ajl SUREFIRE-1706 %} - Use the checkstyle in tests and set includeTestSourceDirectory=true
* {%ajl SUREFIRE-1714 %} - Created module "surefire-shared-utils" as a required dependency in "surefire-extensions-api" and "maven-surefire-common"


Dependency upgrades:

 * {%ajl SUREFIRE-1642 %} - Upgrade plexus-java to Version 1.0.3
 * {%ajl SUREFIRE-1646 %} - Upgrade maven-artifact-transfer Version 0.11.0
 * {%ajl SUREFIRE-1672 %} - DOXIA updated to version 1.9
 * {%ajl SUREFIRE-1674 %} - DOXIA TOOLS updated to version 1.9.1
 * {%ajl SUREFIRE-1685 %} - Upgrade maven-fluido-skin to 1.8 and maven-site-plugin to 3.8.2


Enjoy,

-The Apache Maven team

