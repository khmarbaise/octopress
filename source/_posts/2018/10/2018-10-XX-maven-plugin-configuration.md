---
layout: post
title: "Maven Plugin Configuration - The (Unknown) Tiny Details"
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

The simple reason is that by calling Maven via `mvn enforcer:enforcer` you have not started a 
[life cycle][maven-lifecycle] (something like `clean`, `package` etc.). This means in consequence that the configuration
you have given is not used. And this is the result for the above error message.  

If you like to force Maven (or better the appropriate plugin) to use the above configuration you can do that by using 
a feature which is available since [Maven 3.3.1+][maven-release-notes-3.3.1] (means more than three years). So you have 
to change your command line just a little bit:

```
mvn enforcer:enforce@id-enforce
```
 
If you are unfortunately stuck to an earlier version you can handle that also. The only thing you have to change 
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

The trick here is to name the `id` based on a naming convention (sounds familiar?) which is `default-cli`.
So if you call the plugin goal `mvn enforcer:enforce` this configuration is being picked up by the plugin. 
A disadvantage of the `default-cli` approach is that you can only have a single command line configuration per plugin. 
So I recommend to use a more recent version of Maven which does not has such a limitation.

Based on that you could, in theory, define a default command line configuration for every plugin which exist, but this 
does not make sense. A configuration for calling a plugin goal only make sense for a limited number of use cases. 


Let us take us a more detailed look on plugin configurations and how to use them.


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






The position of the configuration tag has it's meaning and nothing to do with old syntax. If you define the configuration as given in the above example. The configuration is only applied for the execution block in which it is contained. If you locate the configuration tag outside the execution block it is applied globally for all executions including the execution via command line. There exists a special id for execution from command line which is named default-cli which can be used to make different configurations for command line and life cycle which was the only possibility to have different configurations before Maven 3.3.1... By using Maven 3.3.1+ you can have multiple configurations defined in your pom file which you can select on command line if you need.

The different locations for the configuration block gives you also the option to define globally some common configurations for a plugin and in the executions with another configuration tag you can overwrite or enhance configurations.

So in the end this is no bug it's only a misunderstand how configuration of plugins/life cycle works. So I close this issue.

[maven-project]: https://maven.apache.org
[maven-release-notes-3.3.1]: https://maven.apache.org/docs/3.3.1/release-notes.html
[maven-lifecycle]: https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html