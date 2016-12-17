---
layout: post
title: "The Jenkins API Client for Java Version 0.3.6 Released"
date: 2016-08-31 21:24:00
comments: true
categories: [News, Releases, Jenkins, Programming]
---
We have released a new version of the [`The Jenkins API client for Java`][1].
The new released 0.3.6 contains several bugfixes and new features.
Detailed information about the changes can be found in the [release notes][release-notes].

This is the first release under the Jenkins Github Organization umbrella.

 * The `TestReport` can now be used from the general `Build`
   as well as from `MavenBuild`
 * Changed getComputerSet().getComputer() into getComputerSet().getComputers()
   cause it returned a list and more than one element.
 * Added several renameJob() methods with support for the crumbFlag.
 * A job can now being deleted from within a folder.

The Jenkins API client for Java allows you to get informations about builds for example
the duration of a build or test report informations.

Details [API changes are documented in the release notes][release-notes].

[1]: https://github.com/jenkinsci/java-client-api
[release-notes]: https://github.com/jenkinsci/java-client-api/blob/master/ReleaseNotes.md#release-036
