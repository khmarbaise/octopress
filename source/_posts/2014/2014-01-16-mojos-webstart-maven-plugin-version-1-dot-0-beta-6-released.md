---
layout: post
title: "Mojo's Webstart Maven Plugin Version 1.0-beta-6 Released"
date: 2014-01-16 17:39
comments: true
categories: [News,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the [Webstart
Maven Plugin version 1.0-beta-6](http://mojo.codehaus.org/webstart/webstart-maven-plugin)

The Webstart Maven Plugin generates application bundles that can be
deployed via Web Start. The plugin can be used to prepare standalone
Web Start applications or Web Start applications bundled in WAR files
(with or without Sun´s Download Servlet). It handles the generation of
JNLP files and optional version.xml files, using Velocity templates. It
also handles the selection and preparation of the dependencies,
performing signing, unsigning and Pack200 compression when required.


If you are updating from a previous version you will find help in the 
[upgrade guide](http://mojo.codehaus.org/webstart/webstart-maven-plugin/upgrade.html).

<!-- more -->

To get this update, simply specify the version in your project´s
plugin configuration:


``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>webstart-maven-plugin</artifactId>
  <version>1.0-beta-6</version>
</plugin>
``` 


Some links:

[Release Notes - Mojo's Webstart Maven Plugin - Version 1.0-beta-6](https://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11362&version=19872)


Fixed Bugs:

 * {% chjl MWEBSTART-131 %} - Webstart plugin, with no main class
 * {% chjl MWEBSTART-143 %} - An error occurred attempting to copy a file to the JNLP output directory.
 * {% chjl MWEBSTART-203 %} - Problem copying dependent jar files
 * {% chjl MWEBSTART-244 %} - Using outputJarVersions does not works with extensions
 * {% chjl MWEBSTART-245 %} - filenameMapping is by default full, but file are still using the simple mode

Improvements:

 * {% chjl MWEBSTART-88 %} - HttpJarSignClient - New goal "httpsign" which will sign jar files by submitting them to a signing service via HTTP Post
 * {% chjl MWEBSTART-126 %} - The plugin should be silent

New Feature:

 * {% chjl MWEBSTART-11 %} - Support generation of JNLP components


Have Fun!
