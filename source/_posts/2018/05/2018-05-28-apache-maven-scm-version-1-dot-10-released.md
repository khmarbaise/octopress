---
layout: post
title: "Apache Maven SCM Version 1.10.0 Released"
date: 2018-05-28 18:15:33
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven SCM, version 1.10.0](https://maven.apache.org/scm/).

Maven SCM supports Maven 2.x plugins (e.g. maven-release-plugin) and other
tools (e.g. Continuum) by providing them with a common API for doing SCM
operations. You can look at the list of SCMs for more information on using
Maven SCM with your favorite SCM tool.

<!-- more -->

[Release Notes - Maven SCM Version 1.10.0](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317828&version=12335750)

Bugs:

 * {%ajl SCM-763 %} - Password masking for svnexe does not handle all cases
 * {%ajl SCM-797 %} - gitexe checkIn() fails due to Windows command line length limitation
 * {%ajl SCM-814 %} - Dead links on Maven SCM plugin usage page and Maven SCM Providers Matrix page
 * {%ajl SCM-818 %} - Updating doesn't work when in detached HEAD
 * {%ajl SCM-821 %} - fix incorrect resolving of branch name from HG outgoing changes && NPE in HgUtils.differentOutgoingBranchFound
 * {%ajl SCM-829 %} - CommandParameter incorrectly removed from parameter list
 * {%ajl SCM-836 %} - scm:bootstrap throws NPE
 * {%ajl SCM-846 %} - userInfo in Git HTTP URLs not escaped according to RFC 3986
 * {%ajl SCM-862 %} - apache-rat complains about Eclipse .checkstyle files
 * {%ajl SCM-863 %} - NPE in GlobalOptions.setCVSRoot(null) with newer cvsclient
 * {%ajl SCM-865 %} - cvsnt: rls: invalid option -- d
 * {%ajl SCM-866 %} - Cvs ScmProvider.list() does not return correct entries
 * {%ajl SCM-867 %} - ScmWagon has no way to work with CVS and SVN in binary mode
 * {%ajl SCM-868 %} - gitexe add() does not return added files when invoked in subdir
 * {%ajl SCM-869 %} - gitexe list() implemented incorrectly
 * {%ajl SCM-874 %} - ScmResult output password masking does not handle multiline text
 * {%ajl SCM-875 %} - GitUpdateCommand assumes master branch by default
 * {%ajl SCM-878 %} - AbstractConsumer#parseDate() logs wrong locale in case of a ParseException
 * {%ajl SCM-879 %} - JazzChangeLogCommandTest#testListChangesetConsumerWithTimeOnly() fails with NPE on Java 10
 * {%ajl SCM-881 %} - ScmWagon has no way to work with SVN in binary mode
 * {%ajl SCM-882 %} - ScmWagon has no way to work with GIT in binary mode
 * {%ajl SCM-886 %} - Tests with checkin rely on global git config
 * {%ajl SCM-887 %} - Plexus Utils 3.0.24 makes some tests fail
 * {%ajl SCM-888 %} - Changelog generation fails on Windows with Mercurial SCM

Improvements:

 * {%ajl SCM-739 %} - Release Plugin: Use "git --depth 1" When Checking Out
 * {%ajl SCM-748 %} - Automatically create parent dirs with 'svn --parents'
 * {%ajl SCM-855 %} - Upgrade to Java 7
 * {%ajl SCM-873 %} - Improve documentation on svn-settings.xml and git-settings.xml
 * {%ajl SCM-884 %} - Upgrade jgit to last version of java 7 release (4.5.0.201609210915-r)
 * {%ajl SCM-885 %} - Extend GitChangeLogCommand by using revision only

Task:

 * {%ajl SCM-876 %} - switch from Git-WIP to Gitbox

Dependency upgrade:

 * {%ajl SCM-824 %} - Upgrade Plexus Utils to 3.0.24


Enjoy,

-The Apache Maven team
