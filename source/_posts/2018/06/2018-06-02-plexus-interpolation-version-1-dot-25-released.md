---
layout: post
title: "Plexus Codehaus: Plexus Interpolation Version 1.25 Released"
date: 2018-06-02 11:00
comments: true
categories: [Neuigkeiten,BM,Maven,Plexus-Components]
---
The Codehaus Plexus team is pleased to announce the release of the 
[Plexus Interpolation Version 1.25](https://codehaus-plexus.github.io/plexus-interpolation/)

Plexus interpolator is the outgrowth of multiple iterations of development
focused on providing a more modular, flexible interpolation framework for the
expression language style commonly seen in Maven, Plexus, and other related
projects.

It has its foundation in the `org.codehaus.plexus.utils.interpolation`  package
within [plexus-utils](https://codehaus-plexus.github.io/plexus-utils/), but has
been separated in order to allow these two libraries to vary independently of
one another.

``` xml
<dependency>
  <groupId>org.codehaus.plexus</groupId>
  <artifactId>plexus-interpolation</artifactId>
  <version>1.25</version>
</dependency>
```

[Release Notes](https://github.com/codehaus-plexus/plexus-interpolation/milestone/1?closed=1)


Enjoy,

-The Codehaus Plexus team

Karl-Heinz Marbaise
