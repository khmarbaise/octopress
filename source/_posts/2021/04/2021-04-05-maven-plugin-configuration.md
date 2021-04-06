---
layout: post
title: "Maven Plugin Configuration - The (Unknown) Tiny Details"
date: 2021-04-05 21:23:17
comments: true
categories: [Maven,Maven-Plugins,DevOps,Programming]
---
# Overview
If you are using [Apache Maven][maven-project] I suppose you have configured 
several plugins within your pom file already. As an example we use the 
[Maven Enforcer Plugin][maven-enforcer-plugin] to prevent starting a given build with a Maven
version which is less than 3.5.0 which looks like this:
```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-enforcer-plugin</artifactId>
        <version>3.0.0-M3</version>
        <executions>
          <execution>
            <id>id-enforce</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireMavenVersion>
                  <version>3.5.0</version>
                </requireMavenVersion>
              </rules>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
</project>
```
Now you are calling Maven like this: `mvn enforcer:enforce` but now you are astonished about 
the failure which you will be faced with (for brevity inserted some line breaks into the output):
```
$ mvn enforcer:enforce 
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------< com.soebes.articles.plugins:configuration >--------------
[INFO] Building configuration 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-enforcer-plugin:3.0.0-M3:enforce (default-cli) @ configuration ---
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.363 s
[INFO] Finished at: 2021-03-22T20:01:53+01:00
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M3:enforce (default-cli)
on project configuration: No rules are configured. Use the skip flag if you want to disable execution. -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
```
That looks like the configuration we have given in the example is not taken into account. What should
I say. Yes that is exactly the point. Now the crucial question is: Why?

## Details

Let's dive more into details why this happens. The reason is that by calling Maven via
`mvn enforcer:enforce` you have not started a [life cycle][maven-lifecycle] (something like
`clean`, `package` or alike). You have requested to execute the goal `enforce` of the
[Maven Enforcer Plugin][maven-enforcer-plugin].

This means in the end there is a difference for configuring plugins between calling a
[life cycle][maven-lifecycle] and a [goal][maven-goal].

How can we check that what I have claimed is correct?
That's easy to accomplish by just calling a [life cycle phase][maven-lifecycle] like `initialize`
(you can also use `verify` or `package` instead of `initialize` only takes longer to run.):
```
$ mvn initialize 
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------< com.soebes.articles.plugins:configuration >--------------
[INFO] Building configuration 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-enforcer-plugin:3.0.0-M3:enforce (id-enforce) @ configuration ---
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.355 s
[INFO] Finished at: 2021-03-22T20:02:40+01:00
[INFO] ------------------------------------------------------------------------
```
So first mission accomplished and proved that the previously given configuration is now
taken into account.

So based on those insights can we somehow create a configuration which is taken into account
while calling a goal `enforcer:enforce` ? Yes there is a way to do so via the following configuration:
```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-enforcer-plugin</artifactId>
        <version>3.0.0-M3</version>
        <executions>
          <execution>
            <id>default-cli</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireMavenVersion>
                  <version>3.5.0</version>
                </requireMavenVersion>
              </rules>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
</project>
```
Now we are calling the goal:
```
$ mvn enforcer:enforce 
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------< com.soebes.articles.plugins:configuration >--------------
[INFO] Building configuration 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-enforcer-plugin:3.0.0-M3:enforce (default-cli) @ configuration ---
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.516 s
[INFO] Finished at: 2021-03-22T20:29:34+01:00
[INFO] ------------------------------------------------------------------------
```
You can also call the [life cycle][maven-lifecycle] like this:
```
$ mvn initialize 
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------< com.soebes.articles.plugins:configuration >--------------
[INFO] Building configuration 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-enforcer-plugin:3.0.0-M3:enforce (default-cli) @ configuration ---
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.498 s
[INFO] Finished at: 2021-03-27T16:18:03+01:00
[INFO] ------------------------------------------------------------------------
```
Have you spotted the difference? The only difference was between `<id>id-enforce</id>` (of the 
first configuration example) and `<id>default-cli</id>` in the second one. The name `default-cli` is,
as the name implies, the default used for command line execution. This means you can 
define configuration/execution which are only used for calling [goals][maven-goal] from command
line and not part of the [life cycle][maven-lifecycle].

In the next step we would like to make configurations where one is applied for command line execution
`<id>default-cli</id>` and another for life cycle execution `<id>another-id</id>`.
```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-enforcer-plugin</artifactId>
        <version>3.0.0-M3</version>
        <executions>
          <execution>
            <id>default-cli</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireJavaVersion>
                  <version>25</version>
                </requireJavaVersion>
              </rules>
            </configuration>
          </execution>
          <execution>
            <id>another-id</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireMavenVersion>
                  <version>3.9.0</version>
                </requireMavenVersion>
              </rules>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
</project>
```
The above configuration requires a JDK version 25 being used for building instead of the one I'm 
currently using (Just for demonstration purposes; Ok maybe a bit in the future). The second
configuration checks for the Maven version which is expected to be used for that build.
So let use call the goal first:
```
$ mvn enforcer:enforce 
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------< com.soebes.articles.plugins:configuration >--------------
[INFO] Building configuration 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-enforcer-plugin:3.0.0-M3:enforce (default-cli) @ configuration ---
[WARNING] Rule 0: org.apache.maven.plugins.enforcer.RequireJavaVersion failed with message:
Detected JDK Version: 11.0.9 is not in the allowed range 25.
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.549 s
[INFO] Finished at: 2021-03-22T20:45:27+01:00
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M3:enforce (default-cli)
 on project configuration: Some Enforcer rules have failed. Look above for specific messages explaining 
 why the rule failed. -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
```
You can see the command line only configuration is taken into account which can be identified by
the message `Detected JDK Version: 11.0.9 is not in the allowed range 25.`. So worked as expected.
Now we try to execute within life cycle:
```
$ mvn initialize 
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------< com.soebes.articles.plugins:configuration >--------------
[INFO] Building configuration 1.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- maven-enforcer-plugin:3.0.0-M3:enforce (default-cli) @ configuration ---
[WARNING] Rule 0: org.apache.maven.plugins.enforcer.RequireJavaVersion failed with message:
Detected JDK Version: 11.0.9 is not in the allowed range 25.
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.450 s
[INFO] Finished at: 2021-03-27T16:40:31+01:00
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M3:enforce (default-cli) 
on project configuration: Some Enforcer rules have failed. Look above for specific messages explaining 
why the rule failed. -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
```
This hasn't been expected? What went wrong? The problem is simply related to the plugin or more
accurate to the [`enforce`][enforce-goal] goal which has a default binding to the [life cycle][maven-lifecycle]
which can be identified by reading the [doc of the plugin][enforce-goal] (excerpt of it):
```
enforcer:enforce
Full name:
  org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M3:enforce

Description:
  This goal executes the defined enforcer-rules once per module.
  Attributes:

* Requires a Maven project to be executed.
* Binds by default to the lifecycle phase: validate.
```
The important part is the last line: `Binds by default to the lifecycle phase: validate.`. This describes
the behaviour we can observe here. We are using the goal `enforce` simply by defining the `goal`. If you
bind a plugin like the following:

```xml
<project>
.....
        <executions>
          <execution>
            <id>default-cli</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireJavaVersion>
                  <version>25</version>
                </requireJavaVersion>
              </rules>
            </configuration>
          </execution>
          <execution>
            <id>another-id</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireMavenVersion>
                  <version>3.9.0</version>
                </requireMavenVersion>
              </rules>
            </configuration>
          </execution>
        </executions>
  ...
</project>
```
This implies that the life cycle phase to which the plugin is bound is done by the plugin itself. That
means in the end the final configuration it looks like this:
```xml
<project>
.....
        <executions>
          <execution>
            <id>default-cli</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <phase>initialize</phase>
            <configuration>
              <rules>
                <requireJavaVersion>
                  <version>25</version>
                </requireJavaVersion>
              </rules>
            </configuration>
          </execution>
          <execution>
            <id>another-id</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <phase>initialize</phase>
            <configuration>
              <rules>
                <requireMavenVersion>
                  <version>3.9.0</version>
                </requireMavenVersion>
              </rules>
            </configuration>
          </execution>
        </executions>
  ...
</project>
```
This means by calling the [life cycle][maven-lifecycle] `mvn initialize` both executions will be executed 
and in the end also the first one (for java version) is executed even by giving a `<id>default-cli</id>`.

## Life Cycle Binding

In cases where you want to make clear in which life cycle phase a plugin is bound just write
it into the configuration. That makes it possible to override the defaults which a plugin (better the 
plugin author(s)) has defined. We can use this information to solve our problem by changing the
configuration via the following approach: We simply decouple the `enforce` goal for one execution from the 
[life cycle][maven-lifecycle] by defining a [life cycle][maven-lifecycle] phase (`UNKNOWN`) which
simply does not exist.
```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-enforcer-plugin</artifactId>
        <version>3.0.0-M3</version>
        <executions>
          <execution>
            <id>default-cli</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <phase>UNKNOWN</phase>
            <configuration>
              <rules>
                <requireJavaVersion>
                  <version>25</version>
                </requireJavaVersion>
              </rules>
            </configuration>
          </execution>
          <execution>
            <id>another-id</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireMavenVersion>
                  <version>3.9.0</version>
                </requireMavenVersion>
              </rules>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
</project>
```
The other configuration `<id>another-id</id>` can be keep unchanged.
This (intended) coupling could have been identified in earlier outputs where a line was printed out:
```
$ mvn initialize
...
[INFO] --- maven-enforcer-plugin:3.0.0-M3:enforce (default-cli) @ configuration ---
..
```
This indicates that the goal `enforce` of the plugin is bound to a default life cycle `initialize` 
by the plugin itself in contradiction to the output `(default-cli)` (which might brought us to the 
wrong path).

This is a strong indicator that the given goal (`enforce`) is not intended to be called from
command line. I generally recommend **not** to try to configure/execute goals on command line while the 
docs shows: `Binds by default to the lifecycle phase: ..`. There are most likely exceptions but in general 
do not try it otherwise you would enter the dark side of the force ;-)

There are also examples like [Maven Assembly Plugin][maven-assembly-plugin] which has exactly one goal
`single` which is not bound to a life cycle phase at all. This does not mean to use the `single` goal
via command line (technically you can) but usually it does not make sense. Generally it makes sense
to bind the `single` goal to a life cycle phase via the appropriate configuration. 
Based on different project setups it could make sense to bind it to `prepare-package`
or to the `package` phase instead. This is exactly the reason that the plugin is not bound to any phase
by default otherwise it would be necessary to decouple it from one of the phases if you are using the
other one.

## Goals For Command Line
Let us take a look to a plugin which is used from the command more or less exclusively. 
The [Versions Maven Plugin][versions-maven-plugin] has a lot of goals which are all intended for calling 
via command line and not within the [life cycle][maven-lifecycle].

Take a look at a typical example how the [Versions Maven Plugin][versions-maven-plugin] is used. We have a
project where we would like to change the version number. That can easily being done by using the 
following call:

```
$ mvn versions:set -DnewVersion=1.2.0 -DgenerateBackupPoms=false
...
```
So the plugin will change the versions in the `pom.xml` file. You have to remember the option 
`-DgenerateBackupPoms=false` everytime you are calling it otherwise there will backups being created
of the original `pom.xml` files (`pom.xml.versionsBackup`). Afterwards you have either delete those
files manually or with the help of your version control but this situation can be improved by 
using the configuration for the command line only. The configuration looks like the following:
```xml
<project>
  <build>
    <pluginManagement>
      <plugins>
        <plugin>
          <groupId>org.codehaus.mojo</groupId>
          <artifactId>versions-maven-plugin</artifactId>
          <version>2.8.1</version>
          <executions>
            <execution>
              <id>default-cli</id>
              <configuration>
                <generateBackupPoms>false</generateBackupPoms>
              </configuration>
            </execution>
          </executions>
        </plugin>
        ...
      </plugins>
    </pluginManagement>
  </build>
</project>
```
Now you can make a simpler call like this:
```
$ mvn versions:set -DnewVersion=2.0.0-SNAPSHOT
[INFO] Scanning for projects...
[INFO] 
[INFO] -------------< com.soebes.articles.plugins:configuration >--------------
[INFO] Building configuration 1.0.0-SNAPSHOT
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- versions-maven-plugin:2.8.1:set (default-cli) @ configuration ---
[INFO] Local aggregation root: /.../configuration
[INFO] Processing change of com.soebes.articles.plugins:configuration:1.0.0-SNAPSHOT -> 2.0.0-SNAPSHOT
[INFO] Processing com.soebes.articles.plugins:configuration
[INFO]     Updating project com.soebes.articles.plugins:configuration
[INFO]         from version 1.0.0-SNAPSHOT to 2.0.0-SNAPSHOT
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.853 s
[INFO] Finished at: 2021-03-28T20:32:58+02:00
[INFO] ------------------------------------------------------------------------
```

## Configuration for different Command Line Invocation

We have reached an interesting level of configuration options for Maven plugins, unfortunately
there is a limitation. You can configure exactly one command line call (`<id>default-cli</id>`).
If you want to make different configuration for different CLI calls it is simply not possible that way.

Starting with [Maven 3.3.1+][maven-release-notes-3.3.1] (in the meantime 5 years ago) there 
had been an interesting enhancement for goal invocation.

Let us begin with the `default-cli` based on previous examples (using [exec-maven-plugin][exec-maven-plugin] here):
```xml
<project...>
 
  <build>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>exec-maven-plugin</artifactId>
        <version>3.0.0</version>
        <executions>
          <execution>
            <id>default-cli</id>
            <configuration>
              <mainClass>com.soebes.test.First</mainClass>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins> 
  </build>
</project>
```
As described in detail in previous parts you can now call Maven like this:

```
$ mvn exec:java
...

```
That will use the above configuration. So now we enhance the example like this:
```xml
<project...>
 
  <build>
    <plugins>
      <plugin>
        <groupId>org.codehaus.mojo</groupId>
        <artifactId>exec-maven-plugin</artifactId>
        <version>3.0.0</version>
        <executions>
          <execution>
            <id>default-cli</id>
            <configuration>
              <mainClass>com.soebes.test.First</mainClass>
            </configuration>
          </execution>
          <execution>
            <id>second-cli</id>
            <configuration>
              <mainClass>com.soebes.test.Second</mainClass>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins> 
  </build>
</project>
```
Now you can call Maven like this:
```
$ mvn exec:java@second-cli
```
I would like to emphasize the `@second-cli` after the goal `java` which 
lets you select which of the given entries (`<id>..</id>`) will be used while invoking 
the goal. So now you can make a default configuration via `<id>default-cli</id>` and 
several other configuration which can be selected simply by giving the id during the 
command line invocation.

This opens a new level of command invocation configuration. 

You might know the [build-helper-maven-plugin][build-helper-maven-plugin] which can be used in combination with the 
[versions-maven-plugin][versions-maven-plugin] to increment your versions without the 
[maven-release-plugin][maven-release-plugin] via command line like this:

```
 mvn build-helper:parse-version versions:set \
     -DnewVersion=\${parsedVersion.nextMajorVersion}.0.0 \
     versions:commit
```
In this invocation we are calling two different plugins with three goals. The first one is the
`build-helper-maven-plugin` with the goal `parse-version` and the second `versions-maven-plugin` 
using the goal `set` and finally the `versions-maven-plugin` with the goal `commit`.

The `parse-version` goal reads the information of the `pom.xml` related to the version tag into 
plugin properties and produces some supplemental helpful new properties which can be used later 
for usage on the command line part: `-DnewVersion=\${parsedVersion.nextMajorVersion}.0.0`. 
This will use the property `parsedVersion.nextMajorVersion` and use it as input into the `set` 
goal to define a new major version. This means in the end it will increment the major version by
one. The final `commit` goal will make the change of the `pom.xml` permanent. This could also
being achieved by using the previously mentioned `-DgenerateBackupPoms=false` property.

As you already seen we have to use an escape before the `$` to prevent any kind of shell to expand
the information before even calling the plugin goals. Now a more important point is: 
Would you remember all the information needed to call that? I don't. There are further
things possible like this (increment minor version by one):
```
mvn build-helper:parse-version versions:set \
     -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.nextMinorVersion}.0 \
     versions:commit
```
That becomes more and more tedious and error-prone. We can improve that by using a `pom.xml`
configuration (excerpt).
```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>versions-maven-plugin</artifactId>
  <executions>
    <execution>
      <id>major</id>
      <goals>
        <goal>set</goal>
      </goals>
      <configuration>
        <generateBackupPoms>false</generateBackupPoms>
        <newVersion>${parsedVersion.nextMajorVersion}.0.0-SNAPSHOT</newVersion>
      </configuration>
    </execution>
  </executions>
</plugin>
```
So now you can use the following call to increment the major version of your project:
```
$ mvn build-helper:parse-version versions:set@major
```
Much simpler isn't it? Apart from that it's much easier to remember and even simpler to configure 
in any kind of CI/CD solution and you don't have to fight with escaping in different environments.
We can enhance further like this:
```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>versions-maven-plugin</artifactId>
  <executions>
    <execution>
      <id>major</id>
      <goals>
        <goal>set</goal>
      </goals>
      <configuration>
        <generateBackupPoms>false</generateBackupPoms>
        <newVersion>${parsedVersion.nextMajorVersion}.0.0-SNAPSHOT</newVersion>
      </configuration>
    </execution>
    <execution>
      <id>minor</id>
      <goals>
        <goal>set</goal>
      </goals>
      <configuration>
        <generateBackupPoms>false</generateBackupPoms>
        <newVersion>${parsedVersion.majorVersion}.${parsedVersion.nextMinorVersion}.0-SNAPSHOT</newVersion>
      </configuration>
    </execution>
    <execution>
      <id>patch</id>
      <goals>
        <goal>set</goal>
      </goals>
      <configuration>
        <generateBackupPoms>false</generateBackupPoms>
        <newVersion>${parsedVersion.majorVersion}.${parsedVersion.minorVersion}.${parsedVersion.nextIncrementalVersion}-SNAPSHOT</newVersion>
      </configuration>
    </execution>
  </executions>
</plugin>
```
So we can increment the minor version of our project via:
```
$ mvn build-helper:parse-version versions:set@minor
```
The patch number like this:
```
$ mvn build-helper:parse-version versions:set@patch
```
You might have spotted a small issue in the configuration because in each execution the
`<generateBackupPoms>false</generateBackupPoms>` is duplicated?
That can be solved very easy by refactoring that out like this:
```xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>versions-maven-plugin</artifactId>
  <configuration>
    <generateBackupPoms>false</generateBackupPoms>
  </configuration>
  <executions>
    <execution>
      <id>major</id>
      <goals>
        <goal>set</goal>
      </goals>
      <configuration>
        <newVersion>${parsedVersion.nextMajorVersion}.0.0-SNAPSHOT</newVersion>
      </configuration>
    </execution>
    <execution>
      <id>minor</id>
      <goals>
        <goal>set</goal>
      </goals>
      <configuration>
        <newVersion>${parsedVersion.majorVersion}.${parsedVersion.nextMinorVersion}.0-SNAPSHOT</newVersion>
      </configuration>
    </execution>
    <execution>
      <id>patch</id>
      <goals>
        <goal>set</goal>
      </goals>
      <configuration>
        <newVersion>${parsedVersion.majorVersion}.${parsedVersion.minorVersion}.${parsedVersion.nextIncrementalVersion}-SNAPSHOT</newVersion>
      </configuration>
    </execution>
  </executions>
</plugin>
```
These are only some examples how the command line invocation can be tweaked by using the configuration
options in Maven. I hope that helped a bit.

[maven-project]: https://maven.apache.org
[maven-release-notes-3.3.1]: https://maven.apache.org/docs/3.3.1/release-notes.html
[maven-lifecycle]: https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html
[maven-goal]: https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html#a-build-phase-is-made-up-of-plugin-goals
[maven-enforcer-plugin]: https://maven.apache.org/enforcer/maven-enforcer-plugin/
[maven-assembly-plugin]: https://maven.apache.org/plugins/maven-assembly-plugin/
[maven-release-plugin]: https://maven.apache.org/plugins/maven-release-plugin/
[enforce-goal]: https://maven.apache.org/enforcer/maven-enforcer-plugin/enforce-mojo.html
[exec-maven-plugin]: https://www.mojohaus.org/exec-maven-plugin/
[build-helper-maven-plugin]: https://www.mojohaus.org/build-helper-maven-plugin
[parse-version]: https://www.mojohaus.org/build-helper-maven-plugin/parse-version-mojo.html

[so-question]: https://stackoverflow.com/questions/66748054/maven-ignores-plugin-configuration-from-pom-xml 
[versions-maven-plugin]: https://www.mojohaus.org/versions-maven-plugin/
[versions-mp-goals]: https://www.mojohaus.org/versions-maven-plugin/plugin-info.html