---
layout: post
title: "Apache Maven SCM Plugin 1.9 Released"
date: 2014-01-12 16:09
comments: true
categories: [News,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM Plugin, version 1.9](http://maven.apache.org/scm/maven-scm-plugin/).

The SCM Plugin offers vendor independent access to common scm commands by offering a 
set of command mappings for the configured scm.

You should specify the version in your project's plugin configuration:

``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-scm-plugin</artifactId>
  <version>1.9</version>
</plugin>
```

<!-- more -->

[Release Notes - Maven SCM Plugin - Version 1.9](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=10527&version=18783)

Fixed Bugs:

 * {% chjl SCM-435 %} - can not work with local copy
 * {% chjl SCM-503 %} - create a native Java GIT provider using JGit
 * {% chjl SCM-650 %} - HgChangeLogConsumer generates phantom 'null' changeset at the end
 * {% chjl SCM-681 %} - Git blame fails to report line authors on windows with core.autocrlf = true
 * {% chjl SCM-702 %} - Incorrect documentation for parameter "skip" of goal "check-local-modification" of the plugin
 * {% chjl SCM-705 %} - Git pushes tag ambigiously
 * {% chjl SCM-709 %} - REGRESSION: git status doesn't work if repository root is not the working directory
 * {% chjl SCM-733 %} - Bugfixes to mercurial changelog
 * {% chjl SCM-737 %} - can't build CVS provider from source release zip file due to missing CVS test repository

Improvements:

 * {% chjl SCM-487 %} - support --parents option for svn copy (tag commands) (svn 1.5 required)
 * {% chjl SCM-565 %} - scm:validate should not fork the build
 * {% chjl SCM-636 %} - Provide documentation about connection and developerConnection
 * {% chjl SCM-736 %} - update plugin to use plugin-tools java 5 annotations

New Feature:

 * {% chjl SCM-727 %} - integrate scm-provider based on jgit


Enjoy,

The Apache Maven team
