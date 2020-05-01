---
layout: post
title: "Apache Maven EAR Plugin Version 3.0.0 Released"
date: 2018-03-09 22:00:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven EAR Plugin, version 3.0.0](httpa://maven.apache.org/plugins/maven-ear-plugin/)

This plugin generates Java EE Enterprise Archive (EAR) file. It can also
generate the deployment descriptor file (e.g. application.xml).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-ear-plugin</artifactId>
  <version>3.0.0</version>
</plugin>
```

You can download the appropriate [sources etc. from the download page](https://maven.apache.org/plugins/maven-ear-plugin/download.cgi).
 

<!-- more -->

[Release Notes - Maven EAR Plugin - Version 3.0.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317422&amp;version=12330696)

Bugs:

 * {%ajl MEAR-171 %} - Full customization of FileNameMapping is needed
 * {%ajl MEAR-217 %} - Snapshot dependencies are not deleted from skinny WARs
 * {%ajl MEAR-243 %} - Skinny WARs - JAR not removed from WAR if scope in EAR is set to provided
 * {%ajl MEAR-244 %} - Remove link to non-existing Codehaus wiki
 * {%ajl MEAR-246 %} - Upgrade the EAR lifecycle to use the maven-resources-plugin 3.0.2.
 * {%ajl MEAR-250 %} - IT skinny-wars-javaee5 fails while running with JDK 9

New Features:

 * {%ajl MEAR-247 %} - resource-ref in generated application.xml
 * {%ajl MEAR-248 %} - Support lookup-name in env-entry section

Improvements:

 * {%ajl MEAR-198 %} - Add LifecycleMapping and ArtifactHandler from maven-core to target packaging plugin
 * {%ajl MEAR-223 %} - Link to wiki on documentation page is pointing to shutdown codehaus
 * {%ajl MEAR-226 %} - bundleFileName functionality for the acr plugin
 * {%ajl MEAR-228 %} - Remove manifestFile parameter
 * {%ajl MEAR-229 %} - Change default value for version parameter
 * {%ajl MEAR-232 %} - Remove param properties that doesn't make sense for CLI usage
 * {%ajl MEAR-234 %} - Upgrade maven-shared-components parent to version 30
 * {%ajl MEAR-241 %} - Change package to o.a.m.plugins
 * {%ajl MEAR-242 %} - Update lifecycle mapping plugin version
 * {%ajl MEAR-254 %} - Support JavaEE version 8
 * {%ajl MEAR-258 %} - Upgrade site skin to 1.7
 * {%ajl MEAR-260 %} - Remove finalName as a parameter
 * {%ajl MEAR-261 %} - In cases where fileNameMapping is used fail the build
 * {%ajl MEAR-262 %} - Missing since for outputFileNameMapping parameter
 * {%ajl MEAR-263 %} - Wrong docs in examples/customize-file-name-mapping.html

Tasks:

 * {%ajl MEAR-207 %} - Remove the JavaModule/Ejb3Module which are marked deprecated
 * {%ajl MEAR-208 %} - Upgrade to Maven 3.0 compatiblity + JDK 6
 * {%ajl MEAR-209 %} - Change and use a internal unique id instead of artifactId only
 * {%ajl MEAR-259 %} - Fix formatting date issues in apt files

Dependency upgrades:

 * {%ajl MEAR-224 %} - Upgrade plexus-archiver from 2.10.3 to 3.0.1
 * {%ajl MEAR-233 %} - Upgrade plexus-archiver from 3.0.3 to 3.1.1
 * {%ajl MEAR-235 %} - Upgrade maven-archiver to 3.1.0
 * {%ajl MEAR-236 %} - Upgrade maven-filtering to 3.1.1
 * {%ajl MEAR-237 %} - Upgrade plexus-archiver to 3.3
 * {%ajl MEAR-238 %} - Upgrade of plexus-archiver to 3.4.
 * {%ajl MEAR-240 %} - Upgrade of maven-archiver to 3.1.1.
 * {%ajl MEAR-245 %} - Upgrade of plexus-interpolation to 1.24.
 * {%ajl MEAR-251 %} - Upgrade maven-archiver to 3.2.0
 * {%ajl MEAR-252 %} - Upgrade plexus-archiver to 3.5.
 * {%ajl MEAR-253 %} - Upgrade plexus-utils to version 3.1.0
 * {%ajl MEAR-255 %} - Upgrade parent to 31
 * {%ajl MEAR-256 %} - Upgrade maven-verifier component
 * {%ajl MEAR-257 %} - Upgrade JUnit to 4.12

Enjoy,

-The Apache Maven team
