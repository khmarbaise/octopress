---
layout: post
title: "Build Smells"
date: 2013-09-23 13:51
comments: true
categories: [Maven,Build Smells]
---

If you are a software developer (for example in Java) you might have heard about 
[code smells](http://en.wikipedia.org/wiki/Code_smell) which indicate not really bug, 
but usually are a kind of indicator for problems in the future. It´s usually a good 
practice to fix such [code smells](http://www.codinghorror.com/blog/2006/05/code-smells.html). 

But sometimes if I take a deeper look into a [Maven](http://maven.apache.org/) build I can observe things 
like *Build Smells* which could produce problems in future but not need to. 

<!-- more -->

So the best practice for *Code Smells* as well as *Build Smells* is to fix such things as soon as possible. Let us start
with an on the first glance simple example.

#Build works, Release Does not#

You might have observed such situations in a [Maven multi-module-build](http://maven.apache.org/guides/mini/guide-multiple-modules.html).
You can build the whole project without any problems like this:

```
mvn clean package 
```
and furthermore the first step of building the release like this works:

```
mvn -B release:prepare
```

But the final step to really deploy the new versioned artifacts will fail:

```
mvn -B release:perform
```

So what is the reason for such problem?

We have to

