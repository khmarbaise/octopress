---
layout: post
title: "Apache Maven Shared Component: Maven Reporting Impl. Version 3.0.0 Released"
date: 2017-06-25 17:01:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Shared Component: Apache Maven Reporting Impl. Version 3.0.0](http://maven.apache.org/shared/maven-reporting-impl/)

Abstract classes to manage report generation, which can be run both:

 * as part of a site generation, as a [maven-reporting-api](http://maven.apache.org/shared/maven-reporting-api/)'s [MavenReport](http://maven.apache.org/shared/maven-reporting-api/apidocs/org/apache/maven/reporting/MavenReport.html),
 * or as a direct standalone goal invocation, as a [maven-plugin-api](http://maven.apache.org/ref/current/maven-plugin-api/)'s [Mojo](http://maven.apache.org/ref/current/maven-plugin-api/apidocs/org/apache/maven/plugin/Mojo.html).


``` xml
<plugin>
  <groupId>org.apache.maven.reporting</groupId>
  <artifactId>maven-reporting-impl</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12332979)

Bugs:

 * {% ajl MSHARED-392 %} - - AbstractMavenReportRenderer#applyPattern(String) chokes on some specific input and produces useless segments
 * {% ajl MSHARED-489 %} - - AbstractMavenReportRenderer#linkPatternedText ignores name if href is invalid
 * {% ajl MSHARED-608 %} - - Remove index.html-adding block in AbstractMavenReportRenderer#getValidHref()

Improvements:

 * {% ajl MSHARED-430 %} - - Update JDK requirement to 1.6 / upgrade Maven Core dependencies to 3.0
 * {% ajl MSHARED-582 %} - - Upgrade maven-shared-components parent to version 30
 * {% ajl MSHARED-583 %} - - Make three digit version number
 * {% ajl MSHARED-642 %} - - Upgrade to maven-shared-utils 3.2.0

Tasks:

 * {% ajl MSHARED-606 %} - - Upgrade to Commons Validator 1.5.1
 * {% ajl MSHARED-609 %} - - Partially revert MSHARED-429
 * {% ajl MSHARED-611 %} - - Drop any href validation and pass as-is
 * {% ajl MSHARED-612 %} - - Upgrade to Doxia 1.7
 * {% ajl MSHARED-613 %} - - Upgrade to Doxia Sitetools 1.7.4
 * {% ajl MSHARED-614 %} - - Upgrade to Maven Shared Utils 3.1.0

Wish:

 * {% ajl MSHARED-488 %} - - Make input source file encoding default to platform encoding

Enjoy,

-The Apache Maven Team

Karl-Heinz Marbaise
