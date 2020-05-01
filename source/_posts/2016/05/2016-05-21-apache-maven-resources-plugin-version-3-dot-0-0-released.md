---
layout: post
title: "Apache Maven Resources Plugin Version 3.0.0 Released"
date: 2016-05-21 20:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Resources Plugin, Version 3.0.0](https://maven.apache.org/plugins/maven-resources-plugin).


Important Note: 

 * Maven 3.X only
 * JDK 6 minimum requirement


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-resources-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

<!-- more -->

[Release Notes - Apache Maven Resources Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317827&version=12331252)


Bugs:

 * {% ajl MRESOURCES-190 %} - Regression: The plugin is now silently ignoring .gitignore files.
 * {% ajl MRESOURCES-191 %} - Updated plexus-interpolation to fix possible concurrency issues
 * {% ajl MRESOURCES-218 %} - List of examples not complete on first page
 * {% ajl MRESOURCES-219 %} - Link to wiki page should be removed now that Codehaus is shut down
 * {% ajl MRESOURCES-221 %} - Additional practices for Filtering example page

Improvements:

 * {% ajl MRESOURCES-99 %} - ${project.baseUri} and ${maven.build.timestamp} are not expanded by resource filtering
 * {% ajl MRESOURCES-185 %} - Update version of plexus-utils to 3.0.18
 * {% ajl MRESOURCES-186 %} - Improve error handling based on Mark invalid
 * {% ajl MRESOURCES-187 %} - New parameter in the plugin to be able to use filename filtering.
 * {% ajl MRESOURCES-188 %} - Upgrade to Maven 3.0 compatiblity + JDK 1.6
 * {% ajl MRESOURCES-192 %} - Upgrade maven-filtering to 1.3
 * {% ajl MRESOURCES-194 %} - Upgrade to maven-plugins parent version 26
 * {% ajl MRESOURCES-195 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {% ajl MRESOURCES-197 %} - Upgrade to maven-plugins parent version 27
 * {% ajl MRESOURCES-201 %} - Add Parameter for not ignore directories with a leading dot.
 * {% ajl MRESOURCES-202 %} - Upgrade plexus-utils to 3.0.22
 * {% ajl MRESOURCES-207 %} - Change package to org.apache.maven.plugins to prevent conflict with Maven Core
 * {% ajl MRESOURCES-208 %} - Remove @Deprecated marked code
 * {% ajl MRESOURCES-213 %} - Moved code into maven-filtering
 * {% ajl MRESOURCES-214 %} - Added requireProjects to resources/testResources mojo
 * {% ajl MRESOURCES-216 %} - Upgrade maven-filtering to 3.1.0
 * {% ajl MRESOURCES-217 %} - Updated plexus-utils to 3.0.23
 * {% ajl MRESOURCES-220 %} - Encoding example should mention recommended default project.build.sourceEncoding property
 * {% ajl MRESOURCES-222 %} - Remove param properties that doesn't make sense for CLI usage
 * {% ajl MRESOURCES-223 %} - Define the escapeString by default with "\"

New Feature:

 * {% ajl MRESOURCES-203 %} - Add a skip option to skip the execution of resources goal

Reporters of this Release:

 * Laurent TOURREAU [MRESOURCES-203]
 * Felix Köhler [MRESOURCES-201]
 * Josue Abarca [MRESOURCES-190]
 * Thomas Champagne [MRESOURCES-99]

Many thanks to all reporters/contributors/testers of this release.

Enjos,
 
-The Apache Maven team
