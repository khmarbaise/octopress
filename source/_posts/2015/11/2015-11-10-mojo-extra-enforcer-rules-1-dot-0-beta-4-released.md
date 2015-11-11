---
layout: post
title: "MojoHaus Extra Enforcer Rules 1.0-beta-4 Released"
date: 2015-11-10 21:50:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Extra Enforcer Rules team is pleased to announce the release of the 
[Extra Enforcer Rules version 1.0-beta-4](http://www.mojohaus.org/extra-enforcer-rules/).

Apache's Maven Enforcer Plugin is used to apply and enforce rules on your 
Maven projects. 
The Enforcer plugin ships with a set of standard rules 
The MojoHaus project hosts this project to provide extra rules which are not 
part of the standard rule set. 


To get this update, simply specify the version in your project's plugin 
configuration: 

``` xml
<plugin> 
  <groupId>org.apache.maven.plugins</groupId> 
  <artifactId>maven-enforcer-plugin</artifactId> 
  <version>1.4.1</version> 
  <dependencies> 
    <dependency> 
      <groupId>org.codehaus.mojo</groupId> 
      <artifactId>extra-enforcer-rules</artifactId> 
      <version>1.0-beta-4</version> 
    </dependency> 
  </dependencies> 
</plugin> 
```

New features:

 * New rule requireProjectUrl
 * Adapt to mojohaus organisation.

Fixed Bugs:

 * EnforceBytecodeVersion crashes on maven-enforcer-plugin 1.4.1 with a NullPointerException

Fixed Issues: https://github.com/mojohaus/extra-enforcer-rules/issues?q=milestone%3A1.0-beta-4

SCM Diff: https://github.com/mojohaus/extra-enforcer-rules/compare/extra-enforcer-rules-1.0-beta-3...extra-enforcer-rules-1.0-beta-4

Have fun!
-Extra Enforcer Rules team
