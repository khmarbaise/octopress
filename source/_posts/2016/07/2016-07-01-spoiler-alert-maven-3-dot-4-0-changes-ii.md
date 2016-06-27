---
layout: post
title: "Spoiler Alert: Upcoming Maven 3.4.0 - Changes - II"
date: 2016-07-01 14:30
comments: true
categories: [BM,Maven,Maven Release]
---
Currently the preparations for the upcoming Maven 3.4.0 release is running. 
There had been [informations about the changes][change-1] for the next Maven 
release.

I will give some more information about changes which are (might be!) part of
the next [Maven release][jira-issues].

Just be warned that you do not blame me if a particular issue will not part of the final release.
This is written from the current perspecitve. So no warranty about that. 

If you like to create source packages during the release you can use the defined state
in the super pom, but unfortunately there is little issue with the default
definitions which causes the `generate-resources` and the `generate-sources` life
cycle phase to run twice based on the bound goal of the maven-source-plugin which
forkes the life cycle. So a typical workaorund is to detach the maven-source-plugin 
form the life cycle via the following:


``` xml
  <pluginManagment>
    <plugins>
      ..
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-source-plugin</artifactId>
        <version>..</version>
        <executions>
          <execution>
            <id>attach-sources</id>
            <phase>DISABLE_FORKED_LIFECYCLE_MSOURCES</phase>
          </execution>
        </executions>
      </plugin>
      ..
    </plugins> 
  </pluginManagment>
..
```

But to keep generating a source package during the release you need to add
the following to your pom file:

``` xml
  <plugins>
    <plugin>
      <inherited>true</inherited>
      <artifactId>maven-source-plugin</artifactId>
      <executions>
        <execution>
          <id>attach-sources-no-fork</id>
          <inherited>true</inherited>
          <goals>
            <goal>jar-no-fork</goal>
          </goals>
        </execution>
      </executions>
    </plugin>
  </plugins>
```

The above workaround is no longer needed cause the super pom has been changed
accordingly to [MNG-5940][MNG-5940] and exactly contains the binding with the
`jar-no-fork` goal.


[jira-issues]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12316922&version=12333545
[change-1]: https://twitter.com/khmarbaise/status/747046718798200833
[MNG-5940]: https://issues.apache.org/jira/browse/MNG-5940
