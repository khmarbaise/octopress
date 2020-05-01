---
layout: post
title: "Apache Maven JavaDoc Plugin Version 3.1.0 Released"
date: 2019-03-04 22:45
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven JavaDoc Plugin, version 3.1.0](https://maven.apache.org/plugins/maven-javadoc-plugin).

The Javadoc Plugin uses the Javadoc tool to generate javadocs for the
specified project. 


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-javadoc-plugin</artifactId>
  <version>3.1.0</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/plugins/maven-javadoc-plugin/download.cgi

<!-- more -->

[Release Notes - Apache Maven JavaDoc Plugin - Version 3.1.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317529&version=12343313)

Sub-task:

 * {%ajl MJAVADOC-551 %} - Error if path to project contains a spaces
 * {%ajl MJAVADOC-552 %} - Author tag is removed, even though it should be excluded using the fixTags-setting

Bugs:

 * {%ajl MJAVADOC-420 %} - javadoc:fix duplicates lines
 * {%ajl MJAVADOC-445 %} - JavadocOptionsXpp3Reader doesn't deserialize the placement element in Tag
 * {%ajl MJAVADOC-449 %} - javadoc:aggregate fails with JDK 9
 * {%ajl MJAVADOC-469 %} - <additionalOption> input isn't escaped for double backslashes in argument file
 * {%ajl MJAVADOC-495 %} - links option ignored in offline mode, even for local links
 * {%ajl MJAVADOC-506 %} - Javadoc plugin broken on Java 8 when module-info.java present
 * {%ajl MJAVADOC-514 %} - Maven Javadoc Plugin can't get dependency from third party maven repository
 * {%ajl MJAVADOC-526 %} - aggregate goal doesn't respect managed dependencies
 * {%ajl MJAVADOC-527 %} - detectLinks may pass invalid URLs to javadoc(1)
 * {%ajl MJAVADOC-528 %} - Invalid 'expires' attribute
 * {%ajl MJAVADOC-532 %} - <link> entries that do not redirect are ignored
 * {%ajl MJAVADOC-533 %} - <link> entries that point to a resource that requires an Accept header may be ignored
 * {%ajl MJAVADOC-537 %} - warning when javadoc is invoked for dependency
 * {%ajl MJAVADOC-538 %} - JVM "JAVA_TOOL_OPTIONS" or "_JAVA_OPTIONS" message detected as javadoc warning, triggers failure
 * {%ajl MJAVADOC-542 %} - Unsupported class file major version 55
 * {%ajl MJAVADOC-543 %} - Archiving to jar is very slow
 * {%ajl MJAVADOC-544 %} - Changed behaviour of Javadoc for temporary files encoding (options, argfile, ...)
 * {%ajl MJAVADOC-548 %} - Directoryname mixed up with excludePackageNames
 * {%ajl MJAVADOC-549 %} - Version tag comes and goes on several javadoc:fix goal runs
 * {%ajl MJAVADOC-554 %} - Running javadoc:aggregate twice throws MavenReportException
 * {%ajl MJAVADOC-555 %} - Javadoc:aggregate, Javadoc:jar fail if one of the modules does not contain module-info.java
 * {%ajl MJAVADOC-556 %} - javadoc:aggregate fails with "No source files for package" for packages that are not exported
 * {%ajl MJAVADOC-563 %} - Javadoc generation fails if module name contains restricted keyword in non-terminal position
 * {%ajl MJAVADOC-567 %} - "Not in a module on the module source path" when using JDK 12
 * {%ajl MJAVADOC-568 %} - javadoc:jar fails when project has Automatic-Module-Name and (implicit) uses offlinelinks with element-list
 * {%ajl MJAVADOC-570 %} - --add-modules expects comma-separated arguments
 * {%ajl MJAVADOC-575 %} - <source>8</source> fails when module-info.java exists
 * {%ajl MJAVADOC-580 %} - javadoc:javadoc detects wrong java API link when running on openjdk 11.0.2

New Feature:

 * {%ajl MJAVADOC-134 %} - Support aggregated reports at each level in the multi-module hierarchy

Improvements:

 * {%ajl MJAVADOC-444 %} - Add an 'aggregated-no-fork' goal
 * {%ajl MJAVADOC-447 %} - Command line dump reveals proxy user/password in case of errors
 * {%ajl MJAVADOC-499 %} - Ignore module-info.java on earlier Java versions
 * {%ajl MJAVADOC-513 %} - Aggregate: make order of classpath entries predictable
 * {%ajl MJAVADOC-530 %} - Clean up additionalparam documentation
 * {%ajl MJAVADOC-534 %} - Support element-list links from java10 dependencies
 * {%ajl MJAVADOC-546 %} - Allow to generate report in Spanish locale
 * {%ajl MJAVADOC-558 %} - Change default value for removeUnknownThrows to true
 * {%ajl MJAVADOC-562 %} - Ability to pass --release to Javadoc tool
 * {%ajl MJAVADOC-565 %} - Make proxy configuration properly work for both HTTP and HTTPS
 * {%ajl MJAVADOC-566 %} - Use patterns for defaultJavadocApiLinks
 * {%ajl MJAVADOC-577 %} - Fixed typos in User Guide.
 * {%ajl MJAVADOC-578 %} - Groups parameter is not compatibile with Surefire

Task:

 * {%ajl MJAVADOC-557 %} - Deprecate parameter includeTransitiveDependencySources

Dependency upgrade:

 * {%ajl MJAVADOC-535 %} - Upgrade to parent pom 32



Enjoy,

-The Apache Maven team 
