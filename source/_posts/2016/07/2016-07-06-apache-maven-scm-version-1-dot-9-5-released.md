---
layout: post
title: "Apache Maven SCM Version 1.9.5 Released"
date: 2016-07-06 20:05
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.9.5](https://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.9.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12331366)


Bugs:

 * {% ajl SCM-682 %} - Maven release fails when releasing from a named branch
 * {% ajl SCM-734 %} - SVN branching fails with svn+ssh://username@host URL
 * {% ajl SCM-772 %} - GitStatusConsumer does not properly handle quoted paths output from GitStatusCommand
 * {% ajl SCM-795 %} - scm output parsing is too aggressive on stderr
 * {% ajl SCM-806 %} - JGit impl should look for repositories in parent directories
 * {% ajl SCM-812 %} - Jazz SCM Alias Id's roll over to zero, not 1000 as advertised.
 * {% ajl SCM-813 %} - SVN fails when trying to create a branch with nested directories
 * {% ajl SCM-816 %} - Can't bootstrap or checkout project with child module
 * {% ajl SCM-817 %} - Jgit provider exposes password if it contains special characters
 * {% ajl SCM-819 %} - Integrity blame command fixes.
 * {% ajl SCM-820 %} - Correctly strip quotes in GitStatusConsumer
 * {% ajl SCM-822 %} - Fixed SVN branching with svn+ssh://username@host URL.
 * {% ajl SCM-825 %} - provide JGitInfoCommand
 * {% ajl SCM-827 %} - Scm tests fail on Windows because Subversion crashes on loading tck.dump
 * {% ajl SCM-828 %} - support @ in username of scm url

Improvements:

 * {% ajl SCM-775 %} - Add workItem and changeset associate support for scm deliver
 * {% ajl SCM-781 %} - Add a goal to recursively validate SCM url
 * {% ajl SCM-803 %} - Upgrade maven-parent to version 27
 * {% ajl SCM-808 %} - JGit impl should be included in standard providers
 * {% ajl SCM-809 %} - Make git executable name a config option
 * {% ajl SCM-811 %} - m2 release plugin shows SCM git password if fatal occured during git push
 * {% ajl SCM-830 %} - Upgrade maven parent to version 30
 * {% ajl SCM-831 %} - Using inherited site descriptor from maven-parent

Wish:

 * {% ajl SCM-749] - remove "[INFO %} Working directory:" from svnexe output on Linux 




Enjoy,

-The Apache Maven team
