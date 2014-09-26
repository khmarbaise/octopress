---
layout: post
title: "Mojo Extra Enforcer Rules 1.0-beta-3 Released"
date: 2014-09-26 23:15
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi, 

The Mojo team is pleased to announce the release of the 
[Extra Enforcer Rules version 1.0-beta-3](http://mojo.codehaus.org/extra-enforcer-rules/).

Apache's Maven Enforcer Plugin is used to apply and enforce rules on your 
Maven projects. 
The Enforcer plugin ships with a set of standard rules 
The Mojo project hosts this project to provide extra rules which are not 
part of the standard rule set. 


To get this update, simply specify the version in your project's plugin 
configuration: 

``` xml
<plugin> 
  <groupId>org.apache.maven.plugins</groupId> 
  <artifactId>maven-enforcer-plugin</artifactId> 
  <version>1.3.1</version> 
  <dependencies> 
    <dependency> 
      <groupId>org.codehaus.mojo</groupId> 
      <artifactId>extra-enforcer-rules</artifactId> 
      <version>1.0-beta-3</version> 
    </dependency> 
  </dependencies> 
</plugin> 
```

[Release Notes for 1.0-beta-3](http://jira.codehaus.org/secure/ReleaseNote.jspa?projectId=11062&version=19724)

Bug:

 * {% chjl MOJO-2037 %} - java.lang.AssertionError: The file xyz.jar is corrupt or invalid

Improvements:

 * {% chjl MOJO-1988 %} - Make excluding test dependencies configurable
 * {% chjl MOJO-2008 %} - Give version of the bytecode found in a bad dependency


Enjoy, 

The Mojo team. 

-- Baptiste 

