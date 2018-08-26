---
layout: post
title: "Continious Delivery with Maven"
date: 2018-08-26 17:15:12
comments: true
categories: [Maven,Automation,DevOps,Continious Delivery]
---
Based on todays requirements it is needed to do a continuous delivery of 
your artifacts by each change on your master (Git)/trunk(SVN). The question
is what you need to achieve this with Maven?

Usually you are using so called `SNAPSHOT` versions which means your version
looks like `1.2.3-SNAPSHOT` and indicates that you are currently working 
towards the release version `1.2.3`. Afterwards you continue with the next
snapshot version like `1.2.4-SNAPSHOT` and so on. 
Depending on your environment this has been changed which means that each change 
you have made on master (Git) you need to produce a new release version which 
means `1.2.3` and next will be `1.2.4`. The development will be done on branches
where you might need a SNAPSHOT version.

Let us take a look into a single module pom file which looks like this:
```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>4.0.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>domain</artifactId>
  <version>1.2.3-SNAPSHOT</version>
...
</project>
```
The version is defined with `1.2.3-SNAPSHOT` if you now call:
```
mvn clean package
```
You will produce artifacts which look like `domain-1.2.3-SNAPSHOT.jar`.
Unfortunately this kind of artifact is something which can change over the time
based on Maven philosophy. That means if you now make a change in your code
and just do it again `mvn clean package` it will create the
same `domain-1.2.3-SNAPSHOT.jar` file. There is no real difference if you
do an `mvn clean install` instead. This will only install the created 
artifact into your local cache `$HOME/.m2/repository`. Furthermore if you do
`mvn clean deploy` the difference is only that each time you do this on your repository
manager the naming shema is a little bit different which means the artifact will 
look like `domain-1.2.3-20180821.202345-1.jar`. So in the end the artifact contains
a time stamp. But the most important thing is that `SNAPSHOT` versions
are not immutable as you might have already realized based on the above.

So the only way to create real immutable versions is to create releases from Maven
point of view. This means you have to use a version without `-SNAPSHOT`. 
So in consequence you have a pom file which looks like the following:

```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>4.0.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>domain</artifactId>
  <version>1.2.3</version>
...
</project>
```
So you can do a `mvn clean deploy` and you have created an immutable
release artifact `domain-1.2.3.jar`. If you try to do this a second time your
repository manager will tell you that this does not work cause by definition
releases are immutable which means you can not overwrite them. So the
consequence is if you have made a change/mistake/fix to your project you have to
change the version number. Ok, not very complicated just change the version
to `1.2.4` commit and do another `mvn clean deploy`? So good so far. 

Some people do not like the commits where only a version has been changed. 
So the question is: Is there a more convenient way to handle this?

Starting with [Maven 3.5.0+][maven-release-notes](I recommend to use the most recent version) there is a
more convenient way to handle that. You can write your pom file like the following:

```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>4.0.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>domain</artifactId>
  <version>${revision}</version>

...
</project>
```
So now you can simply create release artifacts by using the following:
```
mvn -Drevision=1.2.3 clean package
```
This will only create the artifacts in the `target` directory of your project.
If you like to deploy them into a repository there are [enhancements needed][flatten-plugin]:
```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>4.0.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>domain</artifactId>
  <version>${revision}</version>

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
</project>
```
So from now on you can create a release by using the following command:
```
mvn -Drevision=1.2.3 clean deploy
```
But of course a version can only be used once. So if you like to make another 
release you have to change the version but now it is really easy:
```
mvn -Drevision=1.2.4 clean deploy
```
Currently there are three properties supported which can be used inside a version
tag:

1. revision
2. sha1
3. changelist

Only these three properties can be used inside a version tag. You can of course
use combinations of them like this:

```xml
<version>${revision}${sha1}${changelist}</version>
```
If you use different properties you will get a warning by Maven. I strongly encourage users to take
notice of the warnings and of course clean them up.

So what about a multi module build? There you can use them as well. The parent
will look like this:

```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>4.0.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>parent</artifactId>
  <version>${revision}</version>
  <packaging>pom</packaging>
  ..
  [enhanced described earlier]
  ..
  <modules>
    <module>webgui</module>
    <module>app</module>
    <module>domain</module>
    <module>service</module>
    <module>service-client</module>
    <module>appasm</module>
    <module>assembly</module>
    <module>shade</module>
  </modules>
</project>
```
and a child for example `domain` will look like this:
```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.examples.j2ee</groupId>
    <artifactId>parent</artifactId>
    <version>${revision}</version>
  </parent>


  <artifactId>domain</artifactId>
  ..
</project>
```
You can now build the whole project from the root level by using the command:

```
mvn -Drevision=1.7.0-SNAPSHOT clean package
```
The output will look like this:
```
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO]
[INFO] parent                                                             [pom]
[INFO] domain                                                             [jar]
[INFO] service-client                                                     [jar]
[INFO] webgui                                                             [war]
[INFO] service                                                            [ejb]
[INFO] app                                                                [ear]
[INFO] appasm                                                             [pom]
[INFO] shade                                                              [jar]
[INFO] assembly                                                           [pom]
[INFO]
[INFO] ------------------< com.soebes.examples.j2ee:parent >-------------------
[INFO] Building parent 1.7.0-SNAPSHOT                                     [1/9]
[INFO] --------------------------------[ pom ]---------------------------------
[INFO]
....
[INFO]
[INFO] -----------------< com.soebes.examples.j2ee:assembly >------------------
[INFO] Building assembly 1.7.0-SNAPSHOT                                   [9/9]
[INFO] --------------------------------[ pom ]---------------------------------
[INFO]
[INFO] --- maven-clean-plugin:3.1.0:clean (default-clean) @ assembly ---
[INFO] Deleting /Users/kama/ws-git/javaee/assembly/target
[INFO]
[INFO] --- flatten-maven-plugin:1.0.0:clean (flatten.clean) @ assembly ---
[INFO] Deleting /Users/kama/ws-git/javaee/assembly/.flattened-pom.xml
[INFO]
[INFO] --- jacoco-maven-plugin:0.8.1:prepare-agent (default) @ assembly ---
[INFO] argLine set to -javaagent:/Users/kama/.m2/repository/org/jacoco/org.jacoco.agent/0.8.1/org.jacoco.agent-0.8.1-runtime.jar=destfile=/Users/kama/ws-git/javaee/assembly/target/jacoco.exec
[INFO]
[INFO] --- flatten-maven-plugin:1.0.0:flatten (flatten) @ assembly ---
[INFO] Generating flattened POM of project com.soebes.examples.j2ee:assembly:pom:1.7.0-SNAPSHOT...
[INFO]
[INFO] --- maven-site-plugin:3.7.1:attach-descriptor (attach-descriptor) @ assembly ---
[INFO] No site descriptor found: nothing to attach.
[INFO]
[INFO] --- maven-assembly-plugin:3.0.0:single (assemblies) @ assembly ---
[INFO] Reading assembly descriptor: jar-with-prod.xml
[INFO] Reading assembly descriptor: assembly.xml
[INFO] Reading assembly descriptor: jar-with-dev.xml
[INFO] Building jar: /Users/kama/ws-git/javaee/assembly/target/assembly-1.7.0-SNAPSHOT-prod.jar
[INFO] Building zip: /Users/kama/ws-git/javaee/assembly/target/assembly-1.7.0-SNAPSHOT-archive.zip
[INFO] Building jar: /Users/kama/ws-git/javaee/assembly/target/assembly-1.7.0-SNAPSHOT-dev.jar
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] parent 1.7.0-SNAPSHOT .............................. SUCCESS [  1.535 s]
[INFO] domain ............................................. SUCCESS [  0.876 s]
[INFO] service-client ..................................... SUCCESS [  0.111 s]
[INFO] webgui ............................................. SUCCESS [  0.474 s]
[INFO] service ............................................ SUCCESS [  0.454 s]
[INFO] app ................................................ SUCCESS [  0.282 s]
[INFO] appasm ............................................. SUCCESS [  0.237 s]
[INFO] shade .............................................. SUCCESS [  0.443 s]
[INFO] assembly 1.7.0-SNAPSHOT ............................ SUCCESS [  1.238 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 6.292 s
[INFO] Finished at: 2018-08-26T15:57:12+02:00
[INFO] ------------------------------------------------------------------------
```
So it is now really easy to create a release from the whole project by using the following
command:
```
mvn -Drevision=1.7.0 clean deploy
```
This would result in a release deployed to a repository manager.
So now let us take a look onto using it in a continious integration solution like Jenkins. 
On Jenkins you have often the situation to produce artifacts on a branch base (maybe SNAPSHOT
based to be able to deploy them to test environments).
So you can combine the properties like this:
```xml
<project
  xmlns="http://maven.apache.org/POM/4.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">

  <modelVersion>4.0.0</modelVersion>

  <parent>
    <groupId>com.soebes.smpp</groupId>
    <artifactId>smpp</artifactId>
    <version>4.0.1</version>
  </parent>

  <groupId>com.soebes.examples.j2ee</groupId>
  <artifactId>domain</artifactId>
  <version>${revision}${sha1}${changelist}</version>

  <properties>
    <revision>1.0.0</revision>
    <sha1/>
    <changelist/>
  </properties>
...
</project>
```
In your jenkins pipeline you can extract the branch name and insert it into the build call like this
```
mvn -Dsha1=-BRANCHNAME -Dchangelist=-SNAPSHOT clean deploy
```
This approach has the advantage that on each branch you are using a different version which 
are distinguished by the `-BRANCHNAME` and those versions are snapshots. This is convenient
cause, all repositoy managers have support to delete snapshot versions after some time automatically.

[maven-release-notes]: https://maven.apache.org/docs/3.5.0/release-notes.html
[maven-ci-friendly]: https://maven.apache.org/maven-ci-friendly.html
[flatten-plugin]: https://www.mojohaus.org/flatten-maven-plugin/
