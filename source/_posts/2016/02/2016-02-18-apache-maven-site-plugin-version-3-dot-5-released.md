---
layout: post
title: "Apache Maven Site Plugin Version 3.5 Released"
date: 2016-02-18 08:01
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Apache Maven team is pleased to announce the release of the 
[Apache Maven Site Plugin, version 3.5](http://maven.apache.org/plugins/maven-site-plugin/).

The Site Plugin is used to generate a site for the project. The generated site
also includes the project's reports that were configured in the POM.

Attention there are [breaking changes to know when upgrading](http://maven.apache.org/plugins/maven-site-plugin/migrate.html).


``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-site-plugin</artifactId>
  <version>3.5</version>
</plugin>
```
<!-- more -->
[Release Notes - Maven Site Plugin - Version 3.5](https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12317923&version=12331531&styleName=Text)

Sub-task:

 * {% ajl MSITE-762 %} -  Upgrade Velocity from 1.5 to 1.7

Bugs:

 * {% ajl MSITE-135 %} -  inherited site.xml files are interpolated with the originating project's model values and not the consumer project's values
 * {% ajl MSITE-604 %} -  Properties from settings.xml are not recognized in site distribution management 
 * {% ajl MSITE-694 %} -  When maven.site.skip=true, mvn site:jar doesn't skip the generation of the jar
 * {% ajl MSITE-702 %} -  Overriding skin resources / Duplicate copying of skin resources
 * {% ajl MSITE-724 %} -  An API incompatibility was encountered while executing org.apache.maven.plugins:maven-site-plugin:3.4:jar
 * {% ajl MSITE-743 %} -  Automatic breadcrumbs generates URLs inconsistent with menus: should point to index.html
 * {% ajl MSITE-744 %} -  Regression in 3.4: File in `generated-site/resources/` ignored unless there is a file in `generated-site/markdown/` too
 * {% ajl MSITE-750 %} -  site plugin doesn't override correctly parent distributionManagement site url with another one defined in child project when dav:
 * {% ajl MSITE-752 %} -  Cannot use server side includes.
 * {% ajl MSITE-754 %} -  ConcurrentModificationException when using site:run
 * {% ajl MSITE-760 %} -  when using templateFile, skin is downloaded and info message "Rendering site with skin"

Improvements:

 * {% ajl MSITE-696 %} -  site:deploy try to deploy the site of a sub module even if the property maven.site.skip is set to true
 * {% ajl MSITE-708 %} -  Doc about filtering incorrect about macros rules
 * {% ajl MSITE-723 %} -  "About" report generated even though index.apt is available in "generated-site"
 * {% ajl MSITE-727 %} -  MavenProject/MavenSession Injection as a paremeter instead as a component.
 * {% ajl MSITE-729 %} -  Update version of plexus-archiver to 2.9
 * {% ajl MSITE-740 %} -  Allow multiple extensions for given format
 * {% ajl MSITE-746 %} -  FAQ contains inaccurate description regarding the site life cycle
 * {% ajl MSITE-755 %} -  Upgrade Doxia Sitetools from 1.6 to 1.7
 * {% ajl MSITE-765 %} -  upgrade Doxia from 1.6 to 1.7

New Feature:

 * {% ajl MSITE-756 %} -  add an option to dump Velocity processed Doxia files

Tasks:

 * {% ajl MSITE-753 %} -  remove deprecated template and templateDirectory parameters
 * {% ajl MSITE-759 %} -  Update "Configuring the Site Descriptor" page for Doxia (Sitetools) 1.7
 * {% ajl MSITE-763 %} -  Fix issues reported by dependency:analyze
 * {% ajl MSITE-766 %} -  Upgrade to Commons Lang 3

Wish:

 * {% ajl MSITE-326 %} -  Make input source file encoding default to platform encoding

Enjoy,
 
-The Apache Maven team

