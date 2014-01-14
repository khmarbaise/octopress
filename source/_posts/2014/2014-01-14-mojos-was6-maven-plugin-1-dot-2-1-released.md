---
layout: post
title: "Mojo's WAS6 Maven Plugin 1.2.1 - Released"
date: 2014-01-14 22:56
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the [release of the WAS6 Maven Plugin version 1.2.1](http://mojo.codehaus.org/was6-maven-plugin/).

This plugin works along with an installation of WebSphere Application Server (standalone or ND), 
to provide automated tasks for: generating RMIC stubs, starting/stopping servers, installing/updating/uninstalling 
EARs to application servers, starting/stopping application and run arbitrary scripts through wsadmin

To get this update, simply specify the version in your project´s plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>was6-maven-plugin</artifactId>
  <version>1.2.1</version>
</plugin>
```

<!-- more -->

[Release Notes for WAS6 Maven Plugin](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11730&version=19594)

Fixed Bugs:

 * {% chjl MWAS-70 %} - Skip does not work for wsAdmin, wsStartServer and wsStopServer
 * {% chjl MWAS-72 %} - WSEJBDeploy fails when pom uses system or provided dependencies.
 * {% chjl MWAS-73 %} - WSDL2Java fails when pom uses system or provided dependencies.

New Feature:

 * {% chjl MWAS-59 %} - Support install/uninstall and start/stop for WARs

Enjoy,

The Mojo team.


