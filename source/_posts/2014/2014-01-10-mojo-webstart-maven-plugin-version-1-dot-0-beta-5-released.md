---
layout: post
title: "Mojo Webstart Maven Plugin - Version 1.0-beta-5 Released"
date: 2014-01-10 18:50
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Mojo team is pleased to announce the release of the [Webstart
Maven Plugin version 1.0-beta-5](http://mojo.codehaus.org/webstart/webstart-maven-plugin)

The Webstart Maven Plugin generates application bundles that can be
deployed via Web Start. The plugin can be used to prepare standalone
Web Start applications or Web Start applications bundled in WAR files
(with or without Sun´s Download Servlet). It handles the generation of
JNLP files and optional version.xml files, using Velocity templates. It
also handles the selection and preparation of the dependencies,
performing signing, unsigning and Pack200 compression when required.


If you are updating from a previous version you will find help in the 
[upgrade guide](http://mojo.codehaus.org/webstart/webstart-maven-plugin/upgrade.html)..

<!-- more -->

To get this update, simply specify the version in your project´s
plugin configuration:


``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>webstart-maven-plugin</artifactId>
  <version>1.0-beta-5</version>
</plugin>
``` 


Some links:

[Release Notes - Mojo's Webstart Maven Plugin - Version 1.0-beta-5](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11362&version=19637)

Fixed Bug´s:

* {% chjl MWEBSTART-123 %} - NPE in processDependencies
* {% chjl MWEBSTART-184 %} - Adding outputJarVersions does not work correctly
* {% chjl MWEBSTART-202 %} - Transitive dependency resultion is wrong 
* {% chjl MWEBSTART-210 %} - Dependency list in jnlp is expanded using unix line breaks (could be customisable)
* {% chjl MWEBSTART-214 %} - Webstart Maven Plugin does not respond to Classifier
* {% chjl MWEBSTART-216 %} - webstart-maven-plugin is not well-behaved in multi-module project
* {% chjl MWEBSTART-223 %} - Default Template Location Is Broken
* {% chjl MWEBSTART-224 %} - updateManifestEntries disrupts application
* {% chjl MWEBSTART-228 %} - verify and verifyjar ignored when signing
* {% chjl MWEBSTART-229 %} - Plugin ignores errors from jarsigner
* {% chjl MWEBSTART-231 %} - transitive dependencies will not be resolved in multi module maven project
* {% chjl MWEBSTART-232 %} - dependencies in jnlp file must be ordered
* {% chjl MWEBSTART-234 %} - Unable to parse configuration of mojo org.codehaus.mojo:webstart-maven-plugin:1.0-beta-4:jnlp for parameter pack200: Cannot configure instance of org.codehaus.mojo.webstart.Pack200Config from true
* {% chjl MWEBSTART-235 %} - Upgrade from beta-1 to beta-4 breaks dependency resolution
* {% chjl MWEBSTART-237 %} - Wrong artifact resolved if project contains a module with the same artifactId.
* {% chjl MWEBSTART-239 %} - Can't verify some jars (Invalid SHA-1)
* {% chjl MWEBSTART-240 %} - Jar unsigner removes the complete content from the manifest

Improvements:

* {% chjl MWEBSTART-116 %} - jnlp-download-servlet should use dependencyManagement
* {% chjl MWEBSTART-153 %} - jnlp-download-servlet should apply outputJarVersion transitively
* {% chjl MWEBSTART-167 %} - Dependencies should allow per-group directory or groupId to be added to filename
* {% chjl MWEBSTART-189 %} - Fix documentation
* {% chjl MWEBSTART-199 %} - clarify the documentation - difference between 'jnlp' and 'jnlp-inline' goals
* {% chjl MWEBSTART-221 %} - Avoiding Unnecessary Update Checks
* {% chjl MWEBSTART-222 %} - Add support for  -tsa during signing (Trusted Timestamping) in webstart plugin
* {% chjl MWEBSTART-225 %} - Normalize input template override for servlet mojo
* {% chjl MWEBSTART-241 %} - Performance improvement for update manifest step
* {% chjl MWEBSTART-242 %} - Be able to configure simple parameters by properties

New Features:

* {% chjl MWEBSTART-24 %} - A Mojo for running the application could be useful
* {% chjl MWEBSTART-25 %} - A Mojo for deploying/dist'ing the application could be useful
* {% chjl MWEBSTART-122 %} - Creating war instead of zip
* {% chjl MWEBSTART-128 %} - Generate versioned JARs 
* {% chjl MWEBSTART-195 %} - Support same artifactId for different groups

Tasks:

* {% chjl MWEBSTART-226 %} - Updates to maven-jarsigner 1.3.1
* {% chjl MWEBSTART-227 %} - Updates to keytool 1.4
* {% chjl MWEBSTART-230 %} - use java 5 plexus annotations
* {% chjl MWEBSTART-236 %} - Updates to maven-share-utils 0.5
* {% chjl MWEBSTART-238 %} - Remove verifyjar parameter


Have Fun!
