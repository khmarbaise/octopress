---
layout: post
title: "Build Smells - Maven Assembly Plugin"
date: 2013-09-27 23:22
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

#Maven Assembly Plugin#

Usually you like to create a kind of distribution package which contains some kind of folder structure
and of course the artifacts you have created during your build.

For such purpose there existing a couple of solutions. 

One the solutions i see serveral times is like this.

#The Obvious Solution#

Let us assume having two modules which you like to package into the final zip distribution archive.
This will you bring you to use the [maven-assembly-plugin](http://maven.apache.org/plugins/maven-assembly-plugin) with
an appropriate [assembly descriptor](http://maven.apache.org/plugins/maven-assembly-plugin/assembly.html) like this:

{% codeblock Assembly Descriptor lang:xml %}
<assembly>
  <id>distribution</id>
  <formats>
    <format>zip</format>
  </formats>

  <includeBaseDirectory>false</includeBaseDirectory>

  <fileSets>
    <fileSet>
      <directory>${basedir}/../module-a/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
    <fileSet>
      <directory>${basedir}/../module-b/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
  </fileSets>
</assembly>
{% endcodeblock %}

So on the first glance this descriptor looks very well. Ok. Let us take a look into the appropriate pom file which looks like this:


