---
layout: post
title: "The Jenkins API Client for Java Version 0.3.4 Released"
date: 2016-05-04 15:30:21
comments: true
categories: [News, Releases, Jenkins, Programming]
---
We have released a new version of the [`The Jenkins API client for Java`][1].
The new released 0.3.4 contains several bugfixes and new features.
Detailed information about the changes can be found in the [release notes][release-notes].

 * There has been several issues related to HttpResponseException which 
   occured this has been fixed in the current release.

 * You can now get the whole information about the installed plugins on a 
   Jenkins Server if you have the appropriate permissions, cause the access 
   to the pluginManager is defined an administrative permisions.

 * It is now also possible to get files from the workspace of a given job.

 * The job names are no cases sensitive as Jenkins itself.

 * The test cases now provided also the exceptions which happended during the tests.

 * It is possible to enable/disable jobs.

 * Enhanced the information about where a build has been done.

The Jenkins API client for Java allows you to get informations about builds for example
the duration of a build or test report informations.

Details [API changes are documented in the release notes][release-notes].

[1]: https://github.com/RisingOak/jenkins-client
[release-notes]: https://github.com/RisingOak/jenkins-client/blob/master/ReleaseNotes.md
