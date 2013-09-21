---
layout: post
title: "Iterator-Maven Plugin Release 0.2"
date: 2013-08-24 11:16:26
tags: Neuigkeiten,BM,Maven
categories: Neuigkeiten,BM,Maven
post-type: blog
---

After some time enhancing the [iterator-maven-plugin](http://khmarbaise.github.io/iterator-maven-plugin/) the time
 has come to release a new version
The [iterator-maven-plugin is available via Maven Central](http://search.maven.org/#artifactdetails|com.soebes.maven.plugins|iterator-maven-plugin|0.2|maven-plugin) 
and can be used as any other maven plugin.

{% highlight xml linenos %}
<plugin>
  <groupId>com.soebes.maven.plugins</groupId>
  <artifactId>iterator-maven-plugin</artifactId>
  <version>0.2</version>
  <executions>
    <execution>
      <phase>package</phase>
      <goals>
        <goal>executor</goal>
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
{% endhighlight %}

