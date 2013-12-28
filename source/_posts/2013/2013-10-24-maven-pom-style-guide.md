---
layout: post
title: "Maven POM Style Guide?"
date: 2013-10-24 19:15:02
comments: true
categories: [Maven,Maven Best Practise,POM]
---

If you are working over a longer time with Maven your pom´s become larger and in particular in
projects it happens that everyone has it´s own belief of how a good pom style should look like. 
Packaging type before artifactId, groupId and version, modules before any other things or after all other
things etc. Sounds familiar? 

Using a coding style guide in the Java development is usually today no big deal anymore. So why 
not doing the same in Maven POM files? You know the things? Curly bracket on the same line or 
better on a new line and such things. 

You think this is only achievable manually? Fortunately not. 
There is a plugin which exactly fulfills this requirement. 

<!-- more -->

The [Maven-SortPom-Plugin](http://code.google.com/p/sortpom/) can help you in such situations to make
your life easier.

You can use the following

```
mvn com.google.code.sortpom:maven-sortpom-plugin:sort
```

to sort your pom file in your current project. This call will use a default style which is used to
define the order of the different elements with in the pom file.

``` xml Default Code Style http://code.google.com/p/sortpom/source/browse/sorter/src/main/resources/default_1_0_0.xml
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
   xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion />

  <parent>
    <artifactId />
    <groupId />
    <version />
    <relativePath />
  </parent>

  <groupId />
  <artifactId />
  <version />
  <packaging />

  <name />
  <description />
  <url />
  <inceptionYear />
  <organization>
    <name />
    <url />
  </organization>
  .
```

In other words the above file will define to order your parent element in the way having the artifactId
before the groupId and version whereas the groupId, artifactId and version of the current project is behind that 
parent.

But i would prever having the Maven coordinates always ordered the same way which mean that i would expecting
having the groupId, artifactId and version also in the parent. So the solution to achieve this is simply
create a local copy of the above file and change the order in the parent element accordingly.

So this can help to order the elements within your pom´s always in the same order.
