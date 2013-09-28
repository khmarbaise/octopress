---
layout: post
title: "Build Smells - Maven Assembly Plugin"
date: 2013-09-28 14:00
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

#The Distribution#

It is often the case that you like to create a kind of distribution package which contains some kind of folder structure
and of course the artifacts you have created during your build and may be supplemental files as well.

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
      <directory>${basedir}/../package-1/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
    <fileSet>
      <directory>${basedir}/../package-2/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
  </fileSets>
</assembly>
{% endcodeblock %}

So on the first glance this descriptor looks very well. Ok. Let us take a look into the appropriate pom file which looks like this:


{% codeblock distribution module POM file lang:xml %}
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>org.test.parent</groupId>
    <artifactId>root</artifactId>
    <version>1.0.0-SNAPSHOT</version>
  </parent>

  <name>Packaging Test : Distribution</name>
  <artifactId>dist</artifactId>
  <packaging>pom</packaging>

  <build>
    <plugins>
      <plugin>
        <artifactId>maven-assembly-plugin</artifactId>
        <executions>
          <execution>
            <id>make-bundles</id>
            <phase>package</phase>
            <goals>
              <goal>single</goal>
            </goals>
            <configuration>
              <descriptors>
                <descriptor>proj1-assembly.xml</descriptor>
              </descriptors>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>

</project>
{% endcodeblock %}

If you have the right pom file in the parent than your build will work without any problems which looks like this:

{% codeblock parent POM file lang:xml %}
<?xml version="1.0" encoding="UTF-8"?>
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>0.6.2</version>
  </parent>

  <groupId>org.test.parent</groupId>
  <artifactId>root</artifactId>
  <version>1.0.0-SNAPSHOT</version>

  <packaging>pom</packaging>

  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  </properties>

  <name>Packaging Test</name>

  <modules>
    <module>package-1</module>
    <module>package-2</module>
    <module>dist</module>
  </modules>
</project>
{% endcodeblock %}

The full code of the example can be found on [github](https://github.com/khmarbaise/assembly-examples) in the folder `assemblies-with-files`.


#The Build Smells#

Let us dive into the build and see if we find some kind of *Build Smells*. 

##The Order Smell##

The first smell can be found if you change the order of the modules in the parent pom file from this:

``` xml Original Module Order https://github.com/khmarbaise/assembly-examples/blob/master/assemblies-with-files/pom.xml GitHub
  <modules>
    <module>package-1</module>
    <module>package-2</module>
    <module>dist</module>
  </modules>
```
into the following:

``` xml Changed Module Order https://github.com/khmarbaise/assembly-examples/blob/master/assemblies-with-files-changed-order/pom.xml GitHub
  <modules>
    <module>dist</module>
    <module>package-1</module>
    <module>package-2</module>
  </modules>
```
and your build will faile like this:

{% codeblock parent POM file %}
[INFO] 
[INFO] --- maven-assembly-plugin:2.4:single (make-bundles) @ dist ---
[INFO] Reading assembly descriptor: proj1-assembly.xml
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] Packaging Test .................................... SUCCESS [0.947s]
[INFO] Packaging Test : Distribution ..................... FAILURE [0.470s]
[INFO] Packaging Test : Package-1 ........................ SKIPPED
[INFO] Packaging Test : Package-2 ........................ SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 1.632s
[INFO] Finished at: Sat Sep 28 13:24:55 CEST 2013
[INFO] Final Memory: 23M/981M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-assembly-plugin:2.4:single (make-bundles) on project dist: Failed to create assembly: Error creating assembly archive dist-assembly: You must set at least one file. -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
[ERROR] 
[ERROR] After correcting the problems, you can resume the build with the command
[ERROR]   mvn <goals> -rf :dist
{% endcodeblock %}

The question is: Why does this happen? The simple answer is: Maven can not calculate the reactor build order in the right manner.
The root cause of this is that the dependencies between the modules are not defined at all.
The solution of the problem can be simply achieved by defining the appropriate dependencies to the 
modules you would like to package into your distribution package like this:

``` xml Enhanced POM file with dependencies https://github.com/khmarbaise/assembly-examples/blob/master/assemblies-with-files-deps/dist/pom.xml GitHub
  <dependencies>
    <dependency>
      <groupId>${project.groupId}</groupId>
      <artifactId>package-one</artifactId>
      <version>${project.version}</version>
    </dependency>
    <dependency>
      <groupId>${project.groupId}</groupId>
      <artifactId>package-two</artifactId>
      <version>${project.version}</version>
    </dependency>
  </dependencies>
```
With this change it does not matter in which order you have defined the modules in your parent pom. Maven will calculate the reactor build order
automatically.


##The Assembly Descriptor File Smell##

If we remember back to the maven-assembly-plugin descriptor which looks like this:

``` xml Assembly Descriptor https://github.com/khmarbaise/assembly-examples/blob/master/assemblies-with-files-deps/dist/proj1-assembly.xml GitHub
  <fileSets>
    <fileSet>
      <directory>${basedir}/../package-1/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
    <fileSet>
      <directory>${basedir}/../package-2/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
  </fileSets>
```
At the first glance this descriptor looks ok. But what happens if you have ten modules which should be
packaged into the distribution archive instead of two?
The assembly descriptor would look like this:


``` xml Ten Module Assembly Descriptor 
  <fileSets>
    <fileSet>
      <directory>${basedir}/../package-1/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
    <fileSet>
      <directory>${basedir}/../package-2/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
    <fileSet>
      <directory>${basedir}/../package-3/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
    ...
    .
    .
    <fileSet>
      <directory>${basedir}/../package-10/target/</directory>
      <outputDirectory>/</outputDirectory>
      <includes>
        <include>*.jar</include>
      </includes>
    </fileSet>
  </fileSets>
```

As you can see this descriptor will become quite long and you should not forget to add every dependency 
into the pom file as well, cause if do not do this the reactor order will not as you expect to be 
and your build might fail. In other words you need to maintain two areas. The dependencies as 
well as the descriptor. The full example can be found [here](https://github.com/khmarbaise/assembly-examples/tree/master/assemblies-with-files-ten-mods).


The solution of this problem is to remember that maven has a reactor which can used for such purposes instead of the
file level. This will simplify the descriptor dramatically like this:

``` xml Assembly Descriptor for reactor usage https://github.com/khmarbaise/assembly-examples/tree/master/assemblies-with-files-ten-mods GitHub
<assembly xmlns="http://maven.apache.org/plugins/maven-assembly-plugin/assembly/1.1.0" 
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/plugins/maven-assembly-plugin/assembly/1.1.0 http://maven.apache.org/xsd/assembly-1.1.0.xsd">

  <id>dist-assembly</id>

  <formats>
      <format>zip</format>
  </formats>

  <includeBaseDirectory>false</includeBaseDirectory>

  <dependencySets>
      <dependencySet>
          <outputDirectory>/</outputDirectory>
          <useProjectArtifact>false</useProjectArtifact>
          <unpack>false</unpack>
          <scope>runtime</scope>
      </dependencySet>
  </dependencySets>
</assembly>
```

This simple descriptor will work independant of the number of modules you have. The only thing you need to do is to maintain the
dependencies in your distribution pom.xml file correctly.

