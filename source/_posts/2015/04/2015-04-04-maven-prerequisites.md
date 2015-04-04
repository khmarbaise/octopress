---
layout: post
title: "Maven Prerequisites?"
date: 2015-04-04 12:10
comments: true
categories: [Maven,Maven Best Practise]
---
Starting with [Maven 3.3.1][1] it is possible to define several
important configuration elements within your project. For example JVM
parameters or some kind of build extensions. Unfortunately using such
things may result is wrong or failing builds cause thos informations are
not read by older Maven versions. How can you prevent such situations?

For a long time the [prerequisites][2] exists which defines the minimum
Maven version to build with. I have to emphasize the build time. 

One thing would be to define a prerequisites for your project which
uses the new Maven 3.3.1 features like this in your pom.xml:

``` xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
                      http://maven.apache.org/xsd/maven-4.0.0.xsd">
  ...
  <prerequisites>
    <maven>3.3.1</maven>
  </prerequisites>
  ...
</project>
```

The problem with prerequisites is that it had been marked deprecated for
a long time (starting with Maven 3.0 [MNG-4840][3], [MNG-5297][4],
[MNG-5501][5]) and the intention of prerequisites was to prevent maven
plugins running with the wrong Maven versions. I supose you are not
writing a plugin but you would like to prevent people from trying to
build your project with the wrong Maven version which might fail or
weird results. So the real questions comes up. What to do?

The simple solution for this problem is the [maven-enforcer-plugin][6].
By using the following in your pom file:

``` xml
<build>
  <plugins>
    ...
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-enforcer-plugin</artifactId>
      <version>1.4</version>
      <executions>
        <execution>
          <id>enforce-maven</id>
          <goals>
            <goal>enforce</goal>
          </goals>
          <configuration>
            <rules>
              <requireMavenVersion>
                <version>3.3.1</version>
              </requireMavenVersion>
            </rules>
          </configuration>
        </execution>
      </executions>
    </plugin>
    ...
  </plugins>
</build>
```
you will prevent anyone from using an earlier version of Maven 
than 3.3.1. This solutions will also prevent Maven 2.2.1 from trying to 
start building such a project.

A good practices is also to define such enforcer rule into the company
parent to define the minimum Maven versions you would like to support
with your builds.

The conculusion is to to use only the [maven-enforcer-plugin][7] rule
to define the minimum maven version to build with.

[1]: http://blog.soebes.de/blog/2015/03/17/apache-maven-3-dot-3-1-features/
[2]: http://maven.apache.org/pom.html#Prerequisites
[3]: http://jira.codehaus.org/browse/MNG-4840
[4]: http://jira.codehaus.org/browse/MNG-5297
[5]: http://jira.codehaus.org/browse/MNG-5501
[6]: http://maven.apache.org/enforcer/maven-enforcer-plugin/
[7]: http://maven.apache.org/enforcer/enforcer-rules/requireMavenVersion.html
