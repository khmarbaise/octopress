---
layout: post
title: "Apache Maven SCM Version 1.11.1 Released"
date: 2018-09-15 07:45:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.11.1](https://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.11.1](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12343394)


Bugs:

 * {%ajl SCM-518 %} - wrong model in vss-settings.mdo works only with a bug in Modello 1.0-alpha-21 but not with Modello 1.0+
 * {%ajl SCM-628 %} - scm:checkout parsing URL for clone does not match what is passed in with -DconnectionUrl
 * {%ajl SCM-745 %} - Perforce blame result parsing too greedy
 * {%ajl SCM-791 %} - GitExe Provider does not work properly in Cygwin
 * {%ajl SCM-815 %} - GitExe Provider does not commit files in Cygwin
 * {%ajl SCM-834 %} - Commit encoding is platform-dependent instead of UTF-8
 * {%ajl SCM-835 %} - includes directive doesn't work correctly when other files in directory changes
 * {%ajl SCM-857 %} - AnnotateConsumer fails to parse author name if name contains dot
 * {%ajl SCM-859 %} - Subversion commands don't work if path or URL contains '@'
 * {%ajl SCM-889 %} - Jazz tag command creates snapshot in wrong workspace
 * {%ajl SCM-892 %} - URLs aren't set where URLs are expected
 * {%ajl SCM-895 %} - Starteam tag command inverts logic of tagging subsets of directories
 * {%ajl SCM-896 %} - Subversion config file path incorrectly calculated on Windows
 * {%ajl SCM-905 %} - Tests with checkin rely on global Git config (2)
 * {%ajl SCM-906 %} - JGit provider tests miss SLF4J binding
 * {%ajl SCM-911 %} - Skip tests if Git executable is not in PATH

New Feature:

 * {%ajl SCM-486 %} - Support signed tags for Git

Improvements:

 * {%ajl SCM-805 %} - Add SVN --pin-externals option to copy command (branch/tag)
 * {%ajl SCM-891 %} - Remove duplicate code in tests
 * {%ajl SCM-912 %} - Unify messages if SCM system command is not available

Task:

 * {%ajl SCM-894 %} - Upgrade parent to 32

Sub-tasks:

 * {%ajl SCM-908 %} - GitScmProviderRepository#parseUrl(): skip parsing of user info for file:// URLs
 * {%ajl SCM-910 %} - SvnScmProviderRepository#parseUrl(): skip parsing of user info for file:// URLs

Dependency upgrades:

 * {%ajl SCM-893 %} - Upgrade Modello to 1.9.1
 * {%ajl SCM-898 %} - Upgrade Extra Enforcer Rules to 1.0-beta-9
 * {%ajl SCM-899 %} - Upgrade Commons IO to 2.6
 * {%ajl SCM-900 %} - Upgrade Plexus Utils to 3.1.0
 * {%ajl SCM-901 %} - Upgrade JUnit to 4.12
 * {%ajl SCM-902 %} - Upgrade Mockito Core to 1.10.19
 * {%ajl SCM-903 %} - Upgrade Plexus Security Dispatcher to 1.4
 * {%ajl SCM-904 %} - Upgrade JGit to 4.5.4.201711221230-r

Enjoy,

-The Apache Maven team
