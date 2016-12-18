---
layout: post
title: "The Jenkins API Client for Java Version 0.3.7 Released"
date: 2016-12-16 20:15:00
comments: true
categories: [News, Releases, Jenkins, Programming]
---
We have released a new version of the [`The Jenkins API client for Java`][1].
The new released 0.3.7 contains several bugfixes and new features.
Detailed information about the changes can be found in the [release notes][release-notes].

This is the second release under the Jenkins Github Organization umbrella.

 * `Build` class offers now two different methods to get the 
   test informations. Using either `getTestResult()` for non maven type jobs or
   getTestReport() for maven type jobs.

 * New methods have been added to change the description of a job. The display name
   and/or the description of a build can be changed.

 * Added new helper class has been added to trigger a job wait until the job
   is finished.

 * All `build` methods of Job now consistently giving back a `QueueReference`.

 * Now you can request to get all builds back of a job which was not possible
   in previous releases.

The Jenkins API client for Java allows you to get informations about builds for example
the duration of a build or test report informations.

Details [API changes are documented in the release notes][release-notes].

[1]: https://github.com/jenkinsci/java-client-api
[release-notes]: https://github.com/jenkinsci/java-client-api/blob/master/ReleaseNotes.md#release-037
