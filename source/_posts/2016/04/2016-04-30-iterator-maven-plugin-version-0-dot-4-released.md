---
layout: post
title: "Iterator Maven Plugin Version 0.4 Released"
date: 2016-04-30 22:30
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi to all,

i have released a new version of the [Iterator Maven Plugin](https://khmarbaise.github.io/iterator-maven-plugin/) 
which can iterate over items.

The release notes can be found [here](https://github.com/khmarbaise/iterator-maven-plugin/issues?q=milestone%3A%22Release+0.4%22+is%3Aclosed).

 * pluginManagement defined configuration can now being used.

 * Added new itemsWithProperties to support supplemental properties for each
   iteration element.

 * Added skip option.

 * Added failAtEnd option. 

Apart from that many technical aspects have been improved but which are not
noteworthy for the users of this plugin. Anyone who is interested in such details 
just take a look into the [git history of the project](https://github.com/khmarbaise/iterator-maven-plugin).

Furthermore if you find bugs, having ideas for improvements etc. do not hesitate
to contact me via [Github Issue tracking system](https://github.com/khmarbaise/iterator-maven-plugin/issues).

The iterator-maven-plugin is available via 
[Maven Central](https://search.maven.org/#search|ga|1|a%3A%22iterator-maven-plugin%22).

<!-- more -->

Here is an example how you can use the iterator-maven-plugin:

{% codeblock Iterator Maven Plugin Configuration lang:xml %}
<plugin>
  <groupId>com.soebes.maven.plugins</groupId>
  <artifactId>iterator-maven-plugin</artifactId>
  <version>0.4</version>
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
              <version>2.5.2.</version>
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

The following example shows how the new feature for itemsWithProperties can be used.
This means that for every iteration not only the value of the iteration is given
as property also the supplemental defined properties are injected into the properties
of the project which can of course being accessed via usualy way in Maven.
The real usage is only limited by your own imagination.

{% codeblock Iterator Maven Plugin Configuration lang:xml %}
<plugin>
  <groupId>com.soebes.maven.plugins</groupId>
  <artifactId>iterator-maven-plugin</artifactId>
  <version>0.4</version>
  <executions>
    <execution>
      <phase>package</phase>
      <goals>
        <goal>iterator</goal>
      </goals>
      <configuration>
        <itemsWithProperties>
          <itemsWithProperty>
            <name>test</name>
            <properties>
              <key>value1</key>
            </properties>
          </itemsWithProperty>
          <itemsWithProperty>
            <name>prod</name>
            <properties>
              <key>value2</key>
            </properties>
          </itemsWithProperty>
          <itemsWithProperty>
            <name>dev</name>
            <properties>
              <key>value3</key>
            </properties>
          </itemsWithProperty>
        </itemsWithProperties>
 
        <pluginExecutors>
          <pluginExecutor>
          ...
          </pluginExecutor>
        </pluginExecutors>
      </configuration>
    </execution>
  </executions>
</plugin>
{% endcodeblock %}
