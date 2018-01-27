---
layout: post
title: "MojoHaus Extra Enforcer Rules 1.0-beta-7 Released"
date: 2018-01-23 20:35:00
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
The Extra Enforcer Rules team is pleased to announce the release of the 
[Extra Enforcer Rules version 1.0-beta-7](http://www.mojohaus.org/extra-enforcer-rules/).

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
  <version>3.0.0-M1</version> 
  <dependencies> 
    <dependency> 
      <groupId>org.codehaus.mojo</groupId> 
      <artifactId>extra-enforcer-rules</artifactId> 
      <version>1.0-beta-7</version> 
    </dependency> 
  </dependencies> 
</plugin> 
```

The list of fixed bugs/enhancements etc. can be found here: 
https://github.com/mojohaus/extra-enforcer-rules/milestone/5?closed=1

SCM Diff: https://github.com/mojohaus/extra-enforcer-rules/compare/extra-enforcer-rules-1.0-beta-6...extra-enforcer-rules-1.0-beta-7

Have fun!
- The MojoHaus Team
