---
layout: post
title: "Apache Maven Deploy Plugin - Release 2.8"
date: 2013-09-28 12:25
comments: true
categories: [News,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The new release of the [Apache Maven Deploy Plugin 2.8](http://maven.apache.org/plugins/maven-deploy-plugin/) is available.

The new release of the Maven Deploy Plugin contains two bug fixes, an improvement and an very important 
new feature {% chjl MDEPLOY-157 %}. This will address the problem of deploying artifacts within a multi-module build
where not all artifacts have successfuly installed.

<!-- more -->

Bug

 * {% chjl MDEPLOY-68 %} - altDeploymentRepository allows dangerous deploy processes
 * {% chjl MDEPLOY-145 %} - Documentation does not list layouts

Improvement

 * {% chjl MDEPLOY-154 %} - Rewrite page 'deploy with classifier'

New Feature

 * {% chjl MDEPLOY-157 %} - Add deployAtEnd option for multimodule projects

Task

 * {% chjl MDEPLOY-151 %} - use maven-plugin-tools' java 5 annotations

