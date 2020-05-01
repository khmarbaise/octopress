---
layout: post
title: "Apache Maven Enforcer Plugin Version 3.0.0-M3 Released"
date: 2019-11-23 13:15:23
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Enforcer Plugin, version 3.0.0-M3](https://maven.apache.org/plugins/maven-surefire-plugin/).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-enforcer-plugin</artifactId>
  <version>3.0.0-M3</version>
</plugin>
```

You can download the appropriate sources etc. from the download page:

https://maven.apache.org/enforcer/download.cgi

<!-- more -->

[Release Notes - Maven Enforcer Plugin Version 3.0.0-M3 (including 3.0.0-M1)](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317520&version=12343432&styleName=Text)


Bugs:

 * {%ajl MENFORCER-234 %} - Link to plugin's web site is reported as redirected by maven linkcheck plugin.
 * {%ajl MENFORCER-239 %} - Fix link in navigation (enforcer/maven-enforcer-plugin/index.html) RESOURCES
 * {%ajl MENFORCER-240 %} - Link to page does not work
 * {%ajl MENFORCER-265 %} - Get site generation working
 * {%ajl MENFORCER-268 %} - Usage of CI friendly version placeholders does not work
 * {%ajl MENFORCER-274 %} - Use of RequireJavaVersion with Java-9 breaking starting at b175
 * {%ajl MENFORCER-281 %} - RequirePluginVersions broken with "CI Friendly versions"

New Features:

 * {%ajl MENFORCER-204 %} - Add new rule: should be able to make sure that project artifact is a Snapshot
 * {%ajl MENFORCER-247 %} - Add a "require file checksum" rule
 * {%ajl MENFORCER-273 %} - RequireUpperBoundDeps.excludes
 * {%ajl MENFORCER-282 %} - Add RequireProfileIdsExist to ensure al mentioned cmdline profiles exist

Improvements:

 * {%ajl MENFORCER-228 %} - DependencyConvergence: Simplify logging errors
 * {%ajl MENFORCER-253 %} - Upgrade maven-shared-components parent to version 30
 * {%ajl MENFORCER-259 %} - The rule BanDuplicatePomDependencyVersions is not documented
 * {%ajl MENFORCER-263 %} - Upgrade mrm-maven-plugin to 1.0.0
 * {%ajl MENFORCER-266 %} - Remove usage of prerequisites in parent pom
 * {%ajl MENFORCER-291 %} - Cleanup ReactorModuleConvergence implementation
 * {%ajl MENFORCER-292 %} - Remove getModelsRecursively from EnforcerRuleUtils
 * {%ajl MENFORCER-293 %} - Remove deprecated marked ignoreParent from BanDistributionManagement

Tasks:

 * {%ajl MENFORCER-221 %} - Removed deprecated marked constructor from EnforcerExpressionEvaluator
 * {%ajl MENFORCER-272 %} - Allow site generation to work
 * {%ajl MENFORCER-284 %} - switch to Git
 * {%ajl MENFORCER-296 %} - Update URL for CI System

Dependency upgrades:

 * {%ajl MENFORCER-278 %} - Upgrade mockito to 2.X to prevent JDK 9 WARNINGs
 * {%ajl MENFORCER-289 %} - Upgrade maven-plugin-plugin to 3.5
 * {%ajl MENFORCER-290 %} - Upgrade plexus-utils 3.1.0
 * {%ajl MENFORCER-297 %} - Upgrade parent to 31
 * {%ajl MENFORCER-303 %} - Upgrade mave-surefire/failsafe-plugin 2.21.0


Enjoy,

-The Apache Maven team

