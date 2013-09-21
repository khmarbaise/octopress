---
layout: post
title: "appassembler-maven-plugin release 1.5"
date: 2013-09-14 20:02
comments: true
categories: [Maven, News, Maven-Plugins]
---
The new release of the [Appassembler Maven Plugin 1.5](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
contains a number of bug fixes, improvements and a new feature.

<!-- more -->
The following bug fixes:

 * [MAPPASM-96](http://jira.codehaus.org/browse/MAPPASM-96) which solved a problem with deployment failures 
in relationship with maven-deploy-plugin.
 * [MAPPASM-152](http://jira.codehaus.org/browse/MAPPASM-152) which solved using repositoryName in generate-daemons to give a separate location 
for the repository (JSW)
 * [MAPPASM-190](http://jira.codehaus.org/browse/MAPPASM-190) wrong JAVA_HOME on moutian lion (Mac OS)
 * [MAPPASM-194](http://jira.codehaus.org/browse/MAPPASM-194) licenseHeaderFile ignored when generating booter daemons


The following improvements:

 * [MAPPASM-93](http://jira.codehaus.org/browse/MAPPASM-194) generate-daemon should support setting config dir and repos dir

And the following new feature:

 * [MAPPASM-71](http://jira.codehaus.org/browse/MAPPASM-71) Support Repo's File Name Mapping

