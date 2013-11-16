---
layout: post
title: "Mojo's Webstart Maven Plugin version 1.0-beta-4 Released"
date: 2013-11-06 19:47
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The mojo Team has released a new release of the 
[Webstart Maven Plugin](http://mojo.codehaus.org/webstart/webstart-maven-plugin/upgrade.html)

This new version permits you to generate some [jnlp files acceptable with jdk >= 1.7u45](http://jira.codehaus.org/browse/MWEBSTART-213), 

You can also now use a [keystore from any url](http://jira.codehaus.org/browse/MWEBSTART-39).

<!-- more -->

To get this update, simply specify the version in your project`s
plugin configuration:

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>webstart-maven-plugin</artifactId>
  <version>1.0-beta-4</version>
</plugin>
```

Roadmap:

Next release (1.0-beta-5) will appear soon, the issue {% chjl MWEBSTART-221 %} has 
been fixed to make possible usage of versionned resources. 

I expect to do this new release in the folowing weeks.


The following bugs have been fixed:

 * {% chjl MWEBSTART-127 %} - unsignAlreadySignedJars sometimes removes manifest information
 * {% chjl MWEBSTART-132 %} - Unsigning already signed jars doesn`t work when libPath used
 * {% chjl MWEBSTART-138 %} - The number of signed artifacts differ from the number of modified artifacts
 * {% chjl MWEBSTART-144 %} - Jar Unsigning Does Not Work
 * {% chjl MWEBSTART-152 %} - Jar unsign does not remove certificate : comparison is case sensitive against "DSA", "RSA" and "SF" file extensions
 * {% chjl MWEBSTART-186 %} - While parsing JNLPConf default value of templateDirectory is wrong
 * {% chjl MWEBSTART-196 %} - Jar signing fails if path contains parentheses
 * {% chjl MWEBSTART-198 %} - verify via jarsigner not working
 * {% chjl MWEBSTART-218 %} - Can`t build project with jdk1.5
 * {% chjl MWEBSTART-219 %} - Transitive dependencies not included in generated jnlp files and version.xml

The following improvments:

 * {% chjl MWEBSTART-39 %} - Allow keystore to be: a file, classpath resource or remote resource (not only a file)
 * {% chjl MWEBSTART-50 %} - AbstractJnlpMojo hardcode`s webstart archive
 * {% chjl MWEBSTART-121 %} - The plugin should pick up jars from sister projects 
 * {% chjl MWEBSTART-145 %} - Dependencies (jar resources) from the webstart plugin are not resolved using the reactor, so ```mvn clean package``` will not work. Then, ```mvn release:prepare``` will not work either.
 * {% chjl MWEBSTART-200 %} - Allow to pass arbitrary properties into velocity template for JNLP file
 * {% chjl MWEBSTART-206 %} - Upgrade code to java 5
 * {% chjl MWEBSTART-207 %} - Source code formatting
 * {% chjl MWEBSTART-212 %} - support for --pass-file=<file_name> (of the pack200 command)
 * {% chjl MWEBSTART-213 %} - Enable Manipulation of the manifest from dependend jars
 * {% chjl MWEBSTART-220 %} - Allow to pass arbitrary properties into velocity template for jnlp-download-servlet mojo JNLP file

and the following task have been fixed:

* {% chjl MWEBSTART-20 %} - sort out potential licensing issue of the pack200 tasks
* {% chjl MWEBSTART-217 %} - Use java 5 maven plugin annotations

