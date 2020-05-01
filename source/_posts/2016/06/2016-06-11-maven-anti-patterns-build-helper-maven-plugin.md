---
layout: post
title: "Maven Anti Patterns: Build Helper Maven Plugin"
date: 2016-06-11 13:26
comments: true
categories: [BM,Maven,Maven Best Practice]
---
In Maven builds I often see a pattern like the following:

``` xml
<plugins>
  <plugin>
    <groupId>group</groupId>
    <artifactId>generatorPlugin</artifactId>
    <version>..</version>
    <configuration>
     ...
    </configuration>
  </plugin>
  <plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>build-helper-maven-plugin</artifactId>
    <version>...</version>
    <executions>
      <execution>
        <phase>generate-sources</phase>
        <goals>
          <goal>add-source</goal>
        </goals>
        <configuration>
          <sources>
            <source>target/generated-sources/WHATEVER</source>
          </sources>
        </configuration>
      </execution>
    </executions>
  </plugin>
</plugins>
```

The `generatorPlugin` is just a placeholder for different kinds of maven plugins which generate
code for example [ANTLR4 Maven Plugin][antlr4-maven-plugin], 
[Templating Maven Plugin][templating-maven-plugin], [JAXB2 Maven Plugin][jaxb2-maven-plugin] just
to mention a few examples here.

Usually this can be reduced to the following:
``` xml
<plugins>
  <plugin>
    <groupId>group</groupId>
    <artifactId>generatorPlugin</artifactId>
    <version>..</version>
    <configuration>
     ...
    </configuration>
  </plugin>
</plugins>
```
The reason is simple, cause those plugins already handle the task to add the 
generated source code to the correct parts in Maven to give for example the
[Maven Compiler Plugin][maven-compiler-plugin] a hint to compile also those
generated java code.

Yes I know there are some of such plugins out there which do not do it in the
correct way which means you need to add the [Build Helper Maven Plugin][build-helper-maven-plugin] 
snippet, but this means those plugins need some improvements. Those plugins 
violate the `Convention over Configuration` paradigm. Why? Simply cause you 
as user need to think about an internal detail of those plugins which is simply 
wrong. They have to handle that on their own. 

A further note here. I do not say [Build Helper Maven Plugin][build-helper-maven-plugin]
is wrong. It is the usage of the [Build Helper Maven Plugin][build-helper-maven-plugin]
in the described relationship.


[jaxb2-maven-plugin]: https://www.mojohaus.org/jaxb2-maven-plugin/Documentation/v2.2/
[antlr4-maven-plugin]: https://www.antlr.org/api/maven-plugin/latest/
[templating-maven-plugin]: https://www.mojohaus.org/templating-maven-plugin/
[maven-compiler-plugin]: https://maven.apache.org/plugins/maven-compiler-plugin/
[build-helper-maven-plugin]: https://www.mojohaus.org/build-helper-maven-plugin/
