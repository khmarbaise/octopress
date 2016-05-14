---
layout: post
title: "The Jenkins API Client for Java Version 0.3.5 Released"
date: 2016-05-14 22:21:00
comments: true
categories: News, Releases, Jenkins, Programming
---
We have released a new version of the [`The Jenkins API client for Java`][1].
The new released 0.3.5 contains several bugfixes and new features.
Detailed information about the changes can be found in the [release notes][release-notes].

 * There had been several issues related to NPE. for example
   getUpstreamProjects(), getDownstreamProjects() which 
   return null in case there is no such dependency. This
   has been fixed to return an empty list.

 * Also fixed possible NPE in relation ship with getLastBuild() etc.

The Jenkins API client for Java allows you to get informations about builds for example
the duration of a build or test report informations.

Details [API changes are documented in the release notes][release-notes].

[1]: https://github.com/RisingOak/jenkins-client
[release-notes]: https://github.com/RisingOak/jenkins-client/blob/master/ReleaseNotes.md
