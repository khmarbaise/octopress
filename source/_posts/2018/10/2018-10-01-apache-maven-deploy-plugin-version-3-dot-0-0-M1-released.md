---
layout: post
title: "Apache Maven Deploy Plugin Version 3.0.0-M1 Released"
date: 2018-10-01 17:45:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Deploy Plugin, version 3.0.0-M1](https://maven.apache.org/plugins/maven-deploy-plugin/).

The deploy plugin is primarily used during the deploy phase, to add your
artifact(s) to a remote repository for sharing with other developers and
projects. This is usually done in an integration or release environment. It can
also be used to deploy a particular artifact (e.g. a third party jar like Sun's
non redistributable reference implementations).

Important Note since 3.0.0-M1:

 * Maven 3.X only
 * Minimum JDK 7+
 * The maven-deploy-plugin will generate the needed checksums
   during the transfer to your remote repository.

Usage Note:
 
 * Use the maven-deploy-plugin version 3.0.0-M1 only in combintation
   with the maven-install-plugin version 3.0.0-M1.

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-deploy-plugin</artifactId>
  <version>3.0.0-M1</version>
</plugin>
```

You can download the appropriate sources etc. from the [download page](https://maven.apache.org/plugins/maven-deploy-plugin/download.cgi).

<!-- more -->



[Release Notes - Maven Deploy Plugin Version 3.0.0-M1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317228&version=12330476).


Bugs:

 * {%ajl MDEPLOY-194 %} - Deploy SSH external: copy and paste failure in POM snippet comment
 * {%ajl MDEPLOY-211 %} - uniqueVersion broken (if not supported, should be removed from doc, and warning printed)
 * {%ajl MDEPLOY-212 %} - deploy-file incorrectly deploys attached artifacts
 * {%ajl MDEPLOY-213 %} - deploy-file replaces main artifact of a project
 * {%ajl MDEPLOY-215 %} - Remove link to non-existing Codehaus wiki

New Feature:

 * {%ajl MDEPLOY-178 %} - Use information provided in pom.xml of JAR

Improvements:

 * {%ajl MDEPLOY-171 %} - Remove deprecated readonly parameters
 * {%ajl MDEPLOY-187 %} - Upgrade to Maven 3.0 compatiblity
 * {%ajl MDEPLOY-205 %} - MavenProject with only attachments must have packaging "pom"
 * {%ajl MDEPLOY-207 %} - Remove @Deprecated marked code
 * {%ajl MDEPLOY-222 %} - Issue Tracking in pom.xml points to outdated Codehaus site
 * {%ajl MDEPLOY-231 %} - Move checksum generation from install to deploy plugin
 * {%ajl MDEPLOY-232 %} - Using maven-fluido-skin 1.7
 * {%ajl MDEPLOY-233 %} - Remove unused code
 * {%ajl MDEPLOY-240 %} - Remove updateReleaseInfo parameter

Tasks:

 * {%ajl MDEPLOY-203 %} - Rename package to org.apache.maven.plugins
 * {%ajl MDEPLOY-239 %} - Add GitHub documentation
 * {%ajl MDEPLOY-242 %} - Lift JDK minimum to JDK 7

Sub-task:

 * {%ajl MDEPLOY-202 %} - deploy-file goal insists on deploying source file for previous deploy-file execution

Dependency upgrades:

 * {%ajl MDEPLOY-188 %} - Upgrade plexus-utils to 3.0.18
 * {%ajl MDEPLOY-191 %} - Upgrade to maven-plugins parent version 27
 * {%ajl MDEPLOY-192 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {%ajl MDEPLOY-208 %} - Upgrade plexus-utils to 3.0.24
 * {%ajl MDEPLOY-209 %} - Upgrade maven-shared-components parent to version 30
 * {%ajl MDEPLOY-210 %} - Upgrade of commons-io to 2.5.
 * {%ajl MDEPLOY-219 %} - Upgrade maven-artifact-transfer to version 0.9.1
 * {%ajl MDEPLOY-228 %} - Upgrade plexus-utils 3.1.0
 * {%ajl MDEPLOY-230 %} - Upgrade parent to 31
 * {%ajl MDEPLOY-235 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0
 * {%ajl MDEPLOY-237 %} - Upgrade maven-plugins parent to version 32
 * {%ajl MDEPLOY-238 %} - Upgrade JUnit 4.11 to 4.12

Enjoy,

-The Apache Maven team

Karl-Heinz Marbaise
