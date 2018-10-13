---
layout: post
title: "Maven Plugin Configuration - The Tiny Details"
date: 2018-10-20 10:00:00
comments: true
categories: [Maven,Maven-Plugins,DevOps,Programming]
---
If you are using [Apache Maven][maven-project] I suppose you have configured 
several plugins within your pom file. Lets say we have a pom snippet which looks
like this:

```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groiupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-enforcer-plugin</artifactId>
        <version>3.0.0-M1</version>
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

If you call Maven like this: `mvn enforcer:enforce` you might be astonished about 
the failure which you will be faced with:

```
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M1:enforce (default-cli) on project XXXX: The parameters 'rules' for goal org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M1:enforce are missing or invalid -> [Help 1]
org.apache.maven.lifecycle.LifecycleExecutionException: Failed to execute goal org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M1:enforce (default-cli) on project XXXX: The parameters 'rules' for goal org.apache.maven.plugins:maven-enforcer-plugin:3.0.0-M1:enforce are missing or invalid
```

The simple reason is that by starting Maven via `mvn enforcer:enforcer` you do not start a 
life cycle (something like `clean`, `package` etc.). This means in consequence that the 
configuration you have given is not used. 

If you like to force Maven to use the above configuration you can do that by using a feature which is available since [Maven 3.3.1+][maven-release-notes-3.3.1] 
(means more than three years). So you have to change your command line just a little bit:

```
mvn enforcer:enforce@id-enforcer
```
 
If you are unfortunately stuck to an earlier version you can handle that also. The only thing you need to change 
is the configuration in your pom file like this:


```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groiupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-enforcer-plugin</artifactId>
        <version>3.0.0-M1</version>
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

By using the `default-cli` id Maven will pick up the configuration if a goal is called like `mvn enforcer:enforce`. 
The id `default-cli` is the default configuration for calling a plugin via command line.

So now let us take a look on a configuration like this:


```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groiupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-enforcer-plugin</artifactId>
        <version>3.0.0-M1</version>
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
          <execution>
            <id>config-id1</id>
            <goals>
              <goal>enforce</goal>
            </goals>
            <configuration>
              <rules>
                <requireReleaseVersion>
                  <message>No Snapshots Allowed!</message>
                </requireReleaseVersion>                
              </rules>
            </configuration>
          </execution>
        </executions>
      </plugin>
    </plugins>
  </build>
</project>
```

By using the above configuration you are now able to call `mvn enforcer:enforcer` which will use the configuration
which is related to the id `default-cli` and you can also call `mvn enforcer:enforcer@config-id1` which will
explicitly use the configuration identified by the id `config-id1`.






If you call mvn enforcer:enforce than no life cycle is started. This means that no configuration is used which is defined in the above pom file.
If you like to run mvn enforcer:enforcer and get the above configuration you can use (starting with Maven 3.3.1+) it like this: mvn enforcer:enforce@enforce which will use the configuration given by the <id>enforcer</id>.

The position of the configuration tag has it's meaning and nothing to do with old syntax. If you define the configuration as given in the above example. The configuration is only applied for the execution block in which it is contained. If you locate the configuration tag outside the execution block it is applied globally for all executions including the execution via command line. There exists a special id for execution from command line which is named default-cli which can be used to make different configurations for command line and life cycle which was the only possibility to have different configurations before Maven 3.3.1... By using Maven 3.3.1+ you can have multiple configurations defined in your pom file which you can select on command line if you need.

The different locations for the configuration block gives you also the option to define globally some common configurations for a plugin and in the executions with another configuration tag you can overwrite or enhance configurations.

So in the end this is no bug it's only a misunderstand how configuration of plugins/life cycle works. So I close this issue.

[maven-project]: https://maven.apache.org
[maven-release-notes-3.3.1]: http://maven.apache.org/docs/3.3.1/release-notes.html