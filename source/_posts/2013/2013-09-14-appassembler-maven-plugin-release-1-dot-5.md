---
layout: post
title: "Appassembler Maven Plugin 1.5 released"
date: 2013-09-14 20:02
comments: true
categories: [Maven, News, Maven-Plugins,Maven-Plugin-Releases]
---
The new release of the [Appassembler Maven Plugin 1.5](http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/)
contains a number of bug fixes, improvements and a new feature.

<!-- more -->
The following bug fixes:

 * {% chjl MAPPASM-96 %} which solved a problem with deployment failures 
in relationship with maven-deploy-plugin.
 * {% chjl MAPPASM-152 %} which solved using repositoryName in generate-daemons to give a separate location 
for the repository (JSW)
 * {% chjl MAPPASM-190 %} wrong JAVA_HOME on moutian lion (Mac OS)
 * {% chjl MAPPASM-194 %} licenseHeaderFile ignored when generating booter daemons


The following improvements:

 * {% chjl MAPPASM-93 %} generate-daemon should support setting config dir and repos dir

And the following new feature:

 * {% chjl MAPPASM-71 %} Support Repo's File Name Mapping

