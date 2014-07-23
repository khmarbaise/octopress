---
layout: post
title: "Iterator Maven Plugin Version 0.3 Released"
date: 2014-07-23 12:51
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi to all,

i have released a new version of the [Iterator Maven Plugin](http://khmarbaise.github.io/iterator-maven-plugin/) 
which can iterate over items.

 * The goal `executor` has been renamed to `iterator` which is more releated to the things its doing.

 * Added some documentation for the 
   [`folder` support](http://khmarbaise.github.io/iterator-maven-plugin/iterator-folder.html) 
   which can be used to iterate over a directory which contains one or more folders.

Apart from that many technical aspects have been improved but which are not
noteworthy for the users of this plugin. Anyone who is interested in such details 
just take a look into the [git history of the project](https://github.com/khmarbaise/iterator-maven-plugin).

Furthermore if you find bugs, having ideas for improvements etc. do not hesitate
to contact me via [Github Issue tracking system](https://github.com/khmarbaise/iterator-maven-plugin/issues).

The iterator-maven-plugin is available via 
[Maven Central](http://search.maven.org/#search|ga|1|a%3A%22iterator-maven-plugin%22).

<!-- more -->

Here is an example how you can use the iterator-maven-plugin:

{% codeblock Iterator Maven Plugin Configuration lang:xml %}
<plugin>
  <groupId>com.soebes.maven.plugins</groupId>
  <artifactId>iterator-maven-plugin</artifactId>
  <version>0.3</version>
  <executions>
    <execution>
      <phase>package</phase>
      <goals>
        <goal>iterator</goal>
      </goals>
      <configuration>
        <items>
          <item>test</item>
          <item>prod</item>
          <item>dev</item>
        </items>
 
        <pluginExecutors>
          <pluginExecutor>
            <plugin>
              <groupId>org.apache.maven.plugins</groupId>
              <artifactId>maven-assembly-plugin</artifactId>
              <version>2.4</version>
            </plugin>
            <goal>single</goal>
            <configuration>
              <descriptors>
                <descriptor>${project.basedir}/@item@.xml</descriptor>
              </descriptors>
            </configuration>
          </pluginExecutor>
        </pluginExecutors>
      </configuration>
    </execution>
  </executions>
</plugin>
{% endcodeblock %}

The following example shows how the new feature for folder iteration can be used. The
real usage is only limited by your own imagination.

{% codeblock Iterator Maven Plugin Configuration lang:xml %}
<plugin>
  <groupId>com.soebes.maven.plugins</groupId>
  <artifactId>iterator-maven-plugin</artifactId>
  <version>0.3</version>
  <executions>
    <execution>
      <phase>package</phase>
      <goals>
        <goal>iterator</goal>
      </goals>
      <configuration>
        <folder>src/main/java/com/soebes/maven/multiple/</folder>
        <pluginExecutors>
          <pluginExecutor>
            <plugin>
              <groupId>com.soebes.maven.plugins</groupId>
              <artifactId>maven-echo-plugin</artifactId>
            </plugin>
            <goal>echo</goal>
            <configuration>
              <echos>
                <echo>This is a message: @item@</echo>
              </echos>
            </configuration>
          </pluginExecutor>
        </pluginExecutors>
      </configuration>
    </execution>
  </executions>
</plugin>
{% endcodeblock %}
