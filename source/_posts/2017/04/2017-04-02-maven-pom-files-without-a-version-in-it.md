---
layout: post
title: "Maven: POM files without a version in it?"
date: 2017-04-02 00:15:12
comments: true
categories: [BM,Maven,Maven Best Practice]
---
In Maven 3.2.5 a feature has been introduced to be able to define a version
of a Maven project via properties `${revision}`, `${sha1}` and `${changelist}` 
which unfortuantely had some issues.
Those issues have been fixed with [Maven 3.5.0-beta-1][maven-release-notes-3.5.0-beta-1] 
and now you can define the version of a project by using the following properties: 
`${revision}`, `${sha1}` and `${changelist}`. The example below will show one 
usage of this:

``` xml
  ..
  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>2.2.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>parent</artifactId>
  <version>${revision}</version>
  <packaging>pom</packaging>
  ..

```
For the simplicity of this example I use only `${revision}` but in practice you could
combine the different properties.

The above is a parent of a larger multi module build which contains serveral childs which look
like this:

``` xml

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.examples.j2ee</groupId>
    <artifactId>parent</artifactId>
    <version>${revision}</version>
  </parent>

  <artifactId>service</artifactId>
  <dependencies>
    <dependency>
      <groupId>com.soebes.examples.j2ee</groupId>
      <artifactId>service-client</artifactId>
      <version>${project.version}</version>
    </dependency>
    ...

   ..
```
Based on the above you can now build your project simply by using the following:

```
mvn -Drevision=1.0.0-SNAPSHOT clean package
```

So there is no need to change the pom files and check them in. But there exists a
drawback. You need to define the `-Drevision=...` for each call of Maven which
is not very convenient.

Starting with [Maven 3.3.1][maven-release-notes-3.3.1] you can configure Maven
command line parameters in a `.mvn/maven.config` file which could contain the
version definition like this:

```
-Drevision=1.0.0-SNAPSHOT
```
So with Maven 3.3.1+ you can now simply call Maven via:

```
mvn clean package
```
More convenient? 

Hm... wait a second. What if i like to create a different version? Yes you need 
to change the `.mvn/maven.config` file and you should of course checkin the 
change into your [vcs].

No. This is not really needed, but recommended. You can overwrite the version 
which is defined in the `.mvn/maven.config` via command line like this:

```
mvn clean package -Drevision=2.0.0-SNAPSHOT
```

What kind of alternatives exist? You can of course define your version of your
project as a property within your pom file itself.

``` xml
  ..
  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>2.2.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>parent</artifactId>
  <version>${revision}</version>
  <packaging>pom</packaging>
  ..
  <properties>
    ...
    <revision>2.5.0-SNAPSHOT</revision>
  </properties>

```
So this means you do not need to have a supplemental file in your project 
(like `.mvn/maven.config`) if you not already have. Also for this property 
means you can overwrite it via command like this:

```
mvn clean package -Drevision=1.8.67-SNAPSHOT
```

Deployment
----------
But now let us come to an important point of this whole story. What happens 
if you do an `deploy` of such things via:

```
mvn clean deploy -Drevision=1.8.67-SNAPSHOT
```
The result in your repository will be having pom files which contain `${revision}`
which is simply not correct and can cause other issues.

How to solve this problem? This can simply being achieved by using the 
[flatten-maven-plugin] and adding the following part to your pom file:

```
<build>
  <plugins>
    <plugin>
      <groupId>org.codehaus.mojo</groupId>
      <artifactId>flatten-maven-plugin</artifactId>
      <version>1.0.0</version>
      <configuration>
        <updatePomFile>true</updatePomFile>
      </configuration>
      <executions>
        <execution>
          <id>flatten</id>
          <phase>process-resources</phase>
          <goals>
            <goal>flatten</goal>
          </goals>
        </execution>
        <execution>
          <id>flatten.clean</id>
          <phase>clean</phase>
          <goals>
            <goal>clean</goal>
          </goals>
        </execution>
      </executions>
    </plugin>
  </plugins>
</build>
```

By using the above you can now simply do a deploy via:

```
mvn clean deploy -Drevision=1.8.67-SNAPSHOT
```
and the resulting pom file within the repository will correctly
contain the resolved version `1.8.67-SNASPHOT`.

This makes it easy to change the version from within a CI/CD tool. For
example in Jenkins you can add a parameter like this:

```
mvn clean package -Drevision=1.0-${BUILD_NUMBER}-SNAPSHOT
```
Or make more sophisticated combinations of the properties 
`${revision}`, `${sha1}` and `${changelist}`. 

Conclusion
----------
In the end you are not able to completely ban the versions from your pom file
but nearly 100% which means you do not need to repeat it in each of your parent
entries in a multi module build.

Furthermore you have saved a lot of issues related to merge conflicts within
branches in Maven builds caused by the different version number for the different
branches, cause the version can simply being defined by the CI/CD solution or
manually from command line.

[maven-release-notes-3.3.1]: https://maven.apache.org/docs/3.3.1/release-notes.html#JVM_and_Command_Line_Options
[maven-release-notes-3.5.0-beta-1]: https://maven.apache.org/docs/3.5.0-beta-1/release-notes.html 
[vcs]: https://en.wikipedia.org/wiki/Version_control
[flatten-maven-plugin]: https://www.mojohaus.org/flatten-maven-plugin/
