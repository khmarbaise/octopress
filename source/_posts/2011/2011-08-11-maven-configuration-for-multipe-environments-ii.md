---
layout: post
title: "Maven: Configuration For Multipe Environments - II"
date: 2011-08-11 09:41:32
tags: Neuigkeiten,Neue Versionen,BM,Maven
categories: Neuigkeiten,Neue Versionen,BM,Maven
post-type: blog
---
Based on a comment on my 
[previous article](http://blog.soebes.de/index.php?/archives/340-Maven-Configuration-For-Multipe-Environments.html "previous article") i would like to show 
how to add dependencies to the generated artifacts depending on the environment.

The most important problem is: How to get the different artifacts? If you have artifacts which are stored in a Maven Repository like Maven Central it is easy to get them. 
Just use the [Maven Dependency Plugin][maven-dependency-plugin] to get the artifacts. This means you have to add the following to your pom file: 

{% highlight xml linenos %}
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-dependency-plugin</artifactId>
  <version>2.3</version>
  <executions>
    <execution>
      <id>test</id>
      <phase>prepare-package</phase>
      <goals>
        <goal>copy</goal>
      </goals>
      <configuration>
        <artifactItems>
          <artifactItem>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.1</version>
            <type>jar</type>
          </artifactItem>
        </artifactItems>
        <overWrite>false</overWrite>
        <outputDirectory>${project.build.directory}/environment/test</outputDirectory>
      </configuration>
    </execution>
{% endhighlight %}

Apart from that you need a separate execution block for every environment (test, qa and production in our case). 
Furthermore if you need more than one dependency you can simply achieve this by adding them in the artifactItems block with their 
appropriate groupId, artifactId etc. So far so good. But what happens if you need artifacts which are not 
located within an Maven like repository? Ok not problem at all. You can use the wagon-maven-plugin to download the appropriate artifacts. 
To do such things you simply enhance your pom with the appropriate configuration for the wagon-maven-plugin: 

{% highlight xml linenos %}
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>wagon-maven-plugin</artifactId>
  <version>1.0-beta-3</version>
  <executions>
    <execution>
      <id>download-test-data</id>
      <phase>prepare-package</phase>
      <goals>
        <goal>download-single</goal>
      </goals>
      <configuration>
        <url>http://archive.apache.org/dist/abdera/1.1.2/</url>
        <fromFile>apache-abdera-1.1.2-src.tar.gz</fromFile>
        <toDir>${project.build.directory}/environment/qa</toDir>
      </configuration>
    </execution>
  </executions>
</plugin>
{% endhighlight %}
In this case i have added a .tar.gz archive downloaded from Apache archive and added that to the qa environment. 
The full code of a full fledged Maven build for that and the previous article can be found here.
