---
layout: post
title: "Maven Artifact Checksums - What?"
date: 2018-10-13 16:30:33
comments: true
categories: [Maven,maven-best-practice]
---
If you are using [Apache Maven][maven-project] you might have faced with [issues like this][failures]:
```
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-shade-plugin:2.1:shade (default) on project cores-batch: Error creating shaded jar: invalid LOC header (bad signature) -> [Help 1]
...
.... (remove many lines for brevity).
...
Caused by: java.util.zip.ZipException: invalid LOC header (bad signature)
    at java.util.zip.ZipFile.read(Native Method)
    at java.util.zip.ZipFile.access$1400(ZipFile.java:56)
    at java.util.zip.ZipFile$ZipFileInputStream.read(ZipFile.java:679)
    at java.util.zip.ZipFile$ZipFileInflaterInputStream.fill(ZipFile.java:415)
    at java.util.zip.InflaterInputStream.read(InflaterInputStream.java:158)
    at java.io.FilterInputStream.read(FilterInputStream.java:107)
...
```
How could that happen? Most of the time these are downloading/network issues
which are causing something like this. In extreme rare cases it might also be a
hardware error (But usually I have my doubts about that). This means the
downloaded artifacts are not correctly downloaded or downloaded from
repositories which do not exist anymore. Or any other strange thing you could
imagine. If have artifacts which contain html snippets this is an indicator
that you are trying to download artifacts from repositories which do not exist
anymore. This means you have to check you configuration for your used
repositories which is obviously wrog.

So now the question is: What can you do to prevent that in the furture?

If you take a look on [Stackoverflow][failures] related to that. More or less all answers
will tell you to delete your local cache `$HOME/.m2/repositoy` and rebuild. 
This is unfortunately only a try to fix a symptom but not the real cause. So
work begins with deleting the locale cache as a first step.

And now the very important part:

You have to configure Maven to check the checksums of the downloaded artifacts and
fail your build if they are not correct. This is called *checksum policy* which 
I strongly recomment to use.

This means you have to change the configuration in your `settings.xml`. This means you have
to change the [checksum policy][checksum-policy] in your `settings.xml`.
A temporary solution would be to call maven with: `--strict-checksums` which exactly does this
but only for the appropriate call of Maven and not allways. So it is better to configure
this into your `settings.xml` which will look like this:

```xml
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      https://maven.apache.org/xsd/settings-1.0.0.xsd">
  ...
  <profiles>
    <profile>
      ...
      <repositories>
        <repository>
          <id>codehausSnapshots</id>
          <name>Codehaus Snapshots</name>
          <releases>
            <enabled>false</enabled>
            <updatePolicy>always</updatePolicy>
            <checksumPolicy>fail</checksumPolicy>
          </releases>
          <snapshots>
            <enabled>true</enabled>
            <updatePolicy>never</updatePolicy>
            <checksumPolicy>fail</checksumPolicy>
          </snapshots>
          <url>...</url>
        </repository>
      </repositories>
      <pluginRepositories>
        ...
      </pluginRepositories>
      ...
    </profile>
  </profiles>
  ...
</settings>
```
Furthermore you have to configure this for all of your repositories in your
`settings.xml`. If you are using a repository manager either locally or within
a corporate environment. You have to check your repository manager as well if it
is correctly configured to check the checksums. You should of course not forget
to check if you are downloading via `https://` instead of `http://` from all
of your remote repositories.


[failures]: https://stackoverflow.com/search?tab=newest&q=%5bmaven%5d%20invalid%20LOC%20header
[maven-project]: https://maven.apache.org
[maven-settings]: https://maven.apache.org/settings.html
[checksum-policy]: https://maven.apache.org/settings.html#Repositories
