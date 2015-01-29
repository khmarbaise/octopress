---
layout: post
title: "Apache Maven Enforcer Version 1.4 Released"
date: 2015-01-29 21:09
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Enforcer, version 1.4](http://maven.apache.org/enforcer).

Enforcer is a build rule execution framework.

If you need to force things within your build please use the 
[maven-enforcer-plugin](http://maven.apache.org/enforcer/maven-enforcer-plugin/).

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-enforcer-plugin</artifactId>
  <version>1.4</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven Enforcer - Version 1.4](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11530&version=19420).

Bugs:

 * {% chjl MENFORCER-143 %} - 'All' propery is not handled by RequireActiveProfile rule
 * {% chjl MENFORCER-167 %} - Documented '*' feature of banned dependencies doesn't work
 * {% chjl MENFORCER-175 %} - Rule RequirePrerequisite is incorrectly stated as 'requirePrerequisites' in docs
 * {% chjl MENFORCER-181 %} - Failing Integration Test
 * {% chjl MENFORCER-183 %} - site fails with Maven 3.1.1
 * {% chjl MENFORCER-188 %} - ReactorModuleConvergence does not print the message
 * {% chjl MENFORCER-205 %} - Broken link: 'version' part of 'version - range'

Improvements:

 * {% chjl MENFORCER-169 %} - No Unit Test for RequireActiveProfile Rule and no documentation
 * {% chjl MENFORCER-170 %} - Refactored Unit Test Code
 * {% chjl MENFORCER-171 %} - No documentation for RequireEnvironmentVariable
 * {% chjl MENFORCER-177 %} - Support packagings for RequirePrerequisite rule, always ignore pom.
 * {% chjl MENFORCER-179 %} - Improve documentation for the bannedDependencies
 * {% chjl MENFORCER-180 %} - dependencyConvergence consitenly write the rule name in lower case.
 * {% chjl MENFORCER-182 %} - Missing documentation for new feature MENFORCER-160
 * {% chjl MENFORCER-187 %} - Link on the page to version is wrong
 * {% chjl MENFORCER-200 %} - Make Plugin only 2.2.1 compatible - get rid of Maven 2.0
 * {% chjl MENFORCER-201 %} - MavenProject Injection as a paremeter instead as a component.
 * {% chjl MENFORCER-206 %} - Upgrade maven-invoker-plugin version to 1.9
 * {% chjl MENFORCER-208 %} - Remove deprecated goals.
 * {% chjl MENFORCER-209 %} - Upgrade plexus-utils to 3.0.20
 * {% chjl MENFORCER-210 %} - Upgrade to maven-parent version 25
 * {% chjl MENFORCER-212 %} - Upgrade maven-plugin-plugin from 3.2 to 3.3
 * {% chjl MENFORCER-214 %} - Add prerequisites to maven-enforcer-plugin
 * {% chjl MENFORCER-216 %} - Upgrade to maven-parent version 26
 * {% chjl MENFORCER-217 %} - Upgrade maven-plugin-testing-harness to 1.3
 * {% chjl MENFORCER-218 %} - Upgrade maven-dependency-tree to 2.2
 * {% chjl MENFORCER-219 %} - Add m2e mapping
 * {% chjl MENFORCER-220 %} - Make real MojoExecution available through the EnforcerExpressionEvaluator

New Features:

 * {% chjl MENFORCER-160 %} - Add levels ERROR and WARN to enforcer rules
 * {% chjl MENFORCER-186 %} - Create a rule for the reactor (ReactorModuleConvergence)
 * {% chjl MENFORCER-193 %} - Add new rule: BannedRepositories to ban specified repositories for whole maven session

Tasks:

 * {% chjl MENFORCER-161 %} - Fix deploySite
 * {% chjl MENFORCER-192 %} - Update all entries @since with the correct version 1.4
 * {% chjl MENFORCER-202 %} - Get rid of [WARNING] during build

Enjoy,

-The Apache Maven team
