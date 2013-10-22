---
layout: post
title: "SQLJ Maven Plugin - Release 1.2"
date: 2013-10-22 12:41
comments: true
categories: [Maven, News, Maven-Plugins,Maven-Plugin-Releases]
---

The Mojo Teams has released a new version of the [SQLJ Maven Plugin version 1.2](http://mojo.codehaus.org/sqlj-maven-plugin).

The prior version of the plugin was release about five years ago. This maintenance release mainly focuses on adding m2e 
compatibility to the plugin. For those using it, it will bring very nice incremental build support in Eclipse.

<!-- more -->

To get this update, simply specify the version in your project`s plugin configuration:

{% codeblock SQLJ Maven Plugin lang:xml %}
<plugin>
      <groupId>org.codehaus.mojo</groupId>
      <artifactId>sqlj-maven-plugin</artifactId>
      <version>1.2</version>
</plugin>
{% endcodeblock %}

The following bugs have been fixed:

 * {% chjl MSQLJ-11 %} - Wrong web access url for scm
 * {% chjl MSQLJ-13 %} - sqlj:sqlj fails if status param is configured to false 

Improvements:

 * {% chjl MSQLJ-6 %} - Make plugin m2e compatible 
 * {% chjl MSQLJ-12 %} - Print out the version of sqlj being used 
 * {% chjl MSQLJ-14 %} - Rework how the output of processing (status) info works 

Tasks:

 * {% chjl MSQLJ-7 %} - Convert ITs to maven-invoker-plugin 
 * {% chjl MSQLJ-8 %} - Switch to Mojo Java annotations 
