---
layout: post
title: "Maven: Configuration For Multipe Environments"
date: 2011-07-29 09:20:00
tags: BM,Maven
categories: [Maven, News, Maven-Plugins,Maven Best Practice]
post-type: blog
---
I have often heard that it is not possible to create a number of artifacts out of a single Maven module with different configurations. 
An example from the wild is to have a web-app (or whatever app) which should be running in development, test, q&amp;a 
and production environment. So you need different configurations for the different environments for example the 
database connection or whatever. At first glance that seems to be a contradiction cause Maven's paradigm is "One Module One Artifact"?


Now let us start with a webapp project (packaging war) where the pom.xml looks more or less lilke the following:

``` xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <groupId>com.soebes.maven.multiple.artifacts</groupId>
  <artifactId>solution3</artifactId>
  <version>0.1.0-SNAPSHOT</version>
  <packaging>war</packaging>
  ....
</project>
```

If you call Maven on command line via ```mvn clean package``` you will get a war-file within the target folder 
which contains your webapp incl. web.xml and your compiled classes etc. The contents of the war file 
will be created based on the compiled classes coming from ```src/main/java```, the 
resources ```src/main/resources``` plus ```src/main/webapp``` folder with the supplemental 
dependencies which you have defined inside your pom file.
```
.
|-- pom.xml
`-- src
    |-- main
    |   |-- java
    |   |-- resources
    |   `-- webapp
```
Ok. Now let us come to the point to have some kind of configuration for our web application. We put the 
configuration into the appropriate folders like <strong>test</strong>, <strong>q&amp;a</strong> and <strong>production</strong> which
results into the following structure of the project:
```
.
|-- pom.xml
`-- src
    |-- main
    |   |-- java
    |   |-- resources
    |   |-- environment
    |   |   |-- test
    |   |   |   `-- database.properties
    |   |   |-- qa
    |   |   |   `-- database.properties
    |   |   `-- production
    |   |       `-- database.properties
    |   `-- webapp
```
So we have to create a war file for test, q&amp;a and production. The simplest way to achieve this is by using the 
[Maven Assembly Plugin](http://maven.apache.org/plugins/maven-assembly-plugin/)
You need to create an assembly descriptor for every environment. Let us start with the test environment 
which looks like the following and should be named test.xml and put into ```src/main/assembly``` folder:

``` xml
<assembly xmlns="http://maven.apache.org/plugins/maven-assembly-plugin/assembly/1.1.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/plugins/maven-assembly-plugin/assembly/1.1.0 http://maven.apache.org/xsd/assembly-1.1.0.xsd">

  <id>test</id>
  <formats>
    <format>war</format>
  </formats>
  <includeBaseDirectory>false</includeBaseDirectory>
  <dependencySets>
    <dependencySet>
      <unpack>true</unpack>
      <useProjectArtifact>true</useProjectArtifact>
    </dependencySet>
  </dependencySets>
  <fileSets>
    <fileSet>
      <outputDirectory>WEB-INF</outputDirectory>
      <directory>${basedir}/src/main/environment/test/</directory>
      <includes>
        <include>**</include>
      </includes>
    </fileSet>
  </fileSets>
</assembly>
```

And finally you need a part in your pom file to use the assembly descriptors:
``` xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-assembly-plugin</artifactId>
  <executions>
    <execution>
      <id>test</id>
      <phase>package</phase>
      <goals>
        <goal>single</goal>
      </goals>
      <configuration>
        <descriptors>
          <descriptor>${project.basedir}/src/main/assembly/test.xml</descriptor>
        </descriptors>
      </configuration>
    </execution>
    <execution>
      <id>qa</id>
      <phase>package</phase>
      <goals>
        <goal>single</goal>
      </goals>
      <configuration>
        <descriptors>
          <descriptor>${project.basedir}/src/main/assembly/qa.xml</descriptor>
        </descriptors>
      </configuration>
    </execution>
    <execution>
      <id>production</id>
      <phase>package</phase>
      <goals>
        <goal>single</goal>
      </goals>
      <configuration>
        <descriptors>
          <descriptor>${project.basedir}/src/main/assembly/production.xml</descriptor>
        </descriptors>
      </configuration>
    </execution>
  </executions>
</plugin>
```
Now the result is that by using a simple ```mvn package``` you get in the target folder three 
different war files, named like ```artifactId-version-test.war```, ```artifactId-version-qa.war``` and
```artifactId-version-production.war``` which are packaged for the different environments.
