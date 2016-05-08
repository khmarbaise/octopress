---
layout: post
title: "Building For Multiple Environments"
date: 2016-05-08 19:17
comments: true
categories: [Neuigkeiten,BM,Maven,Maven Best Practise]
---

As i described in my previous articles ([Multiple Environments I][build-multiple-i] 
and [Multiple Environments II][build-multiple-ii]) there are situations where 
you need to create separate artifacts for different
environments.

But the problem is that by using the suggested solutions is that it can be made better. 

Thats the reason why I'm writing this blog article.

I have created a more or less simple [Maven Plugn][multienv-maven-plugin] which handles 
exactly those situations.

Let us assume you have the following environments:

 * dev-01
 * test-01
 * prod

And now you need to create a configurations for those different environments
which usually means you need to create a set of configuration files which are
different for each of those environments.
 
So you simply create the following folder structure in your Maven project:

```
src
  ├── main 
        ├── environments
             ├── dev-01
             │   └── first.properties
             ├── test-01
             │   └── first.properties
             └── prod
                 └── first.properties
```

So as an example the file `first.properties` contains some kind of
configuration for your application.

By using the [MultiEnv Maven Plugin ][multienv-maven-plugin] you can now add
the following to your `pom.xml` file:

```xml
  <groupId>groupId</groupId>
  <artifactId>artifactId</artifactId>
  <version>0.1-SNAPSHOT</version>
  <packaging>war</packaging>
  ...
  <build>
    <plugins>
      <plugin>
        <groupId>com.soebes.maven.plugins</groupId>
        <artifactId>multienv-maven-plugin</artifactId>
        <version>0.1.0</version>
        <executions>
          <execution>
            <goals>
              <goal>environment</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
```

As a result you can simply call Maven:

```
mvn clean package
```

which will result in three supplemental files:

 * artifactId-0.1-SNAPSHOT-dev-01.war
 * artifactId-0.1-SNAPSHOT-test-01.war
 * artifactId-0.1-SNAPSHOT-prodc-01.war

inclusive the base `artifactId-0.1-SNAPSHOT.war` file (Here I have assumed you
are creating a war file).

Those files like `*-dev-01.war` contain the configuration of the appropriate
folder which means you can deploy them into the appropriate environment.

The other solution is to create separate configuration packages which contain
only the configuration for the separate environments.
This can be done with the [MultiEnv-Maven-Plugin][multienv-maven-plugin] as
well. It provides a different goal for this purpose:


```xml
  <groupId>groupId</groupId>
  <artifactId>artifactId</artifactId>
  <version>0.1-SNAPSHOT</version>
  <packaging>war</packaging>
  ...
  <build>
    <plugins>
      <plugin>
        <groupId>com.soebes.maven.plugins</groupId>
        <artifactId>multienv-maven-plugin</artifactId>
        <version>0.1.0</version>
        <executions>
          <execution>
            <goals>
              <goal>configuration</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
```

So you can call Maven:

```
mvn clean package
```

which will result in three supplemental files:

 * artifactId-0.1-SNAPSHOT-dev-01.jar
 * artifactId-0.1-SNAPSHOT-test-01.jar
 * artifactId-0.1-SNAPSHOT-prodc-01.jar

Those artifacts only contain the configuration files of the appropriate
environments and can be deployed to the appropriate environments as a separate
package.

If you have ideas/wished/bugs etc. please use the [issue tracking system of the plugin][issues] 
on Github.

Any feedback is appreciated.


[build-multiple-ii]: http://blog.soebes.de/blog/2011/08/11/maven-configuration-for-multipe-environments-ii/
[build-multiple-i]: http://blog.soebes.de/blog/2011/07/29/maven-configuration-for-multipe-environments/
[multienv-maven-plugin]: https://khmarbaise.github.io/multienv-maven-plugin/
[issues]: https://github.com/khmarbaise/multienv-maven-plugin/issues
