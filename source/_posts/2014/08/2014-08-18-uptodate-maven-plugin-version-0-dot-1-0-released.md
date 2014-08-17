---
layout: post
title: "UpToDate Maven Plugin Version 0.1.0 Released"
date: 2014-08-18 08:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi to all,

i have released the first version of the 
[UpToDate Maven Plugin](http://khmarbaise.github.io/uptodate-maven-plugin/) 
which is intended to check for updates of your dependencies or of your
parent.  Sometimes it is vital to be on the most uptodate version of
an artifact. This can be done organizationally but often people just
miss that point. This will lead to help desk calls etc. which is time
consuming. This can be solved by using the uptodate-maven-plugin
which automatically checks the dependencies or your parent.

The basic idea was seeded by the 
[JIRA entry for maven-enforcer](http://jira.codehaus.org/browse/MENFORCER-190) 
but i realized that a maven-enforcer rule was not the right path to solve
it. So this was the reason to create this plugin.

The uptodate-maven-plugin is available via 
[Maven Central](http://search.maven.org/#search|ga|1|a%3A%22uptodate-maven-plugin%22).


``` xml
<plugin>
  <groupId>com.soebes.maven.plugins</groupId>
  <artifactId>uptodate-maven-plugin</artifactId>
  <version>0.1.0</version>
</plugin>
```

<!-- more -->
Lets take a look at a real example like the following:

{% codeblock Uptodate Maven Plugin Example 1 lang:xml %}
<parent>
  <groupId>com.soebes.maven.plugins.test.integration</groupId>
  <artifactId>parent</artifactId>
  <version>0.1</version>
</parent>

<groupId>org.test.parent</groupId>
<artifactId>root</artifactId>
<version>1.0.0-SNAPSHOT</version>

<name>Parent Test</name>

<build>
  <plugins>
    <plugin>
      <groupId>com.soebes.maven.plugins</groupId>
      <artifactId>uptodate-maven-plugin</artifactId>
      <version>0.1.0</version>
      <executions>
        <execution>
          <id>parent-check</id>
          <goals>
            <goal>parent</goal>
          </goals>
          <phase>validate</phase>
        </execution>
      </executions>
    </plugin>
  </plugins>
</build>
{% endcodeblock %}

The above build will run fine if the given parent exists only in the
version 0.1, but the build will fail if you deploy a new version of
your parent for example 0.2. This makes sure your projects will use
only the newest version of an existing parent.

If you really hit the situation where this is wrong you can use 
the skip option of the plugin `uptodate.skip` to temporarily 
disable this rule.

If you have ideas / improvements / bugs don not hesitate to contact
me via [github](https://github.com/khmarbaise/uptodate-maven-plugin/issues).

If you have the requirement to check your dependencies to be
up-to-date you can use the goal `dependency` instead.

{% codeblock Uptodate Maven Plugin Example 2 lang:xml %}
<parent>
  <groupId>com.soebes.maven.plugins.test.integration</groupId>
  <artifactId>parent</artifactId>
  <version>0.1</version>
</parent>

<groupId>org.test.parent</groupId>
<artifactId>root</artifactId>
<version>1.0.0-SNAPSHOT</version>

<name>Parent Test</name>

<dependencies>
  <dependency>
    <groupId>com.soebes.maven.plugins.test.integration</groupId>
    <artifactId>dep-01</artifactId>
    <version>0.1</version>
  </dependency>
</dependencies>

<build>
  <plugins>
    <plugin>
      <groupId>com.soebes.maven.plugins</groupId>
      <artifactId>uptodate-maven-plugin</artifactId>
      <version>0.1.0</version>
      <executions>
        <execution>
          <id>dependency-check</id>
          <goals>
            <goal>dependency</goal>
          </goals>
          <phase>validate</phase>
        </execution>
      </executions>
    </plugin>
  </plugins>
</build>
{% endcodeblock %}

The above build will run fine if your given dependency 
`com.soebes.maven.plugins.test.integration:dep-01:0.1`
is the most up-to-date one. Your build will fail 
if exist a newer version of this dependency.
