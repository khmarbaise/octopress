---
layout: post
title: "Apache Maven Shared Component: Maven Common Artifact Filters 3.0.0 Released"
date: 2015-12-02 08:00:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Shared]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Shared Component: Maven Common Artifact Filters Version 3.0.0](http://maven.apache.org/shared/maven-common-artifact-filters/).

A collection of ready-made filters to control inclusion/exclusion of artifacts
during dependency resolution.
 
Important Notes:

 * Maven 3.X only
 * JDK 6 minimum requirement

You should specify the version in your project's plugin configuration:

``` xml 
<plugin>
  <groupId>org.apache.maven.shared</groupId>
  <artifactId>maven-common-artifact-filters</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](http://maven.apache.org/shared/maven-common-artifact-filters/download.cgi).

<!-- more -->
 
[Release Notes Maven Common Artifact Filters 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317922&version=12331499)

Bug:

 * {% ajl MSHARED-466 %} -  Filtering dependencies does not retain the order of the unfiltered list

Improvements:

 * {% ajl MSHARED-403 %} -  Upgrade to Maven 2.2.1 compatiblity
 * {% ajl MSHARED-404 %} -  Upgrade maven-shared-utils to 0.7
 * {% ajl MSHARED-423 %} -  Change JDK + Maven requirements
 * {% ajl MSHARED-424 %} -  Add Filter mechanism which can be passed to Sonatype/Eclipse Aether
 * {% ajl MSHARED-425 %} -  Change construct-method signatures of ArtifactTransitivityFilter; don't use deprecated M2 code
 * {% ajl MSHARED-450 %} -  Upgrade maven-shared-utils to 3.0.0
 * {% ajl MSHARED-458 %} -  Upgrade maven-shared-components parent to version 22
 * {% ajl MSHARED-468 %} -  Remove @Deprecated marked code

 
Enjoy,
 
-The Apache Maven team
