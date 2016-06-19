---
layout: post
title: "Spoiler Alert: Upcoming Maven 3.4.0 - Changes"
date: 2016-06-19 20:56
comments: true
categories: [BM,Maven,Maven Release]
---
Currently the preparations for the upcoming Maven 3.4.0 release is running. 
There had been [informations about the changes][change-1] for the next Maven 
release.

I will give some more information about changes which are (might be!) part of
the next [Maven release][jira-issues].

Just be warned that you do not blame me if a particular issue will not part of the final release.
This is written from the current perspecitve. So no warranty about that. It could happen that changes
might not get into the final release.

I assume you know that [filtering in resources][maven-resources-filtering] can
simply be achieved by configuring things like this in your pom file:

```xml
  ...
  <resources>
    <resource>
      <directory>src/main/resources</directory>
      <filtering>true</filtering>
    </resource>
  </resources>
...
```

But this configuration has one drawback. It will filter everything, except
files with pre defined extensions like 
[`jpg`, `jpeg`, `gif`, `bmp`, `png`][non-filtered-extensions]. 
Often in builds you need have supplemental files which should be filered or not
filtered. So the consequence is to enhance the configuration and adding
those extensions/folders etc. Or you know that you have some folders in that above
tree which contain files which should not be filtered eithers. This often ends
up with a bunch of configuration via includes/excludes etc. which is simply
cumbersome.

The best and simplest solution would be having two different locations for filtered
and non-filtered files. So a configuration in your pom could look like this:

```xml
  ...
  <resources>
    <resource>
      <directory>src/main/resources</directory>
    </resource>
    <resource>
      <directory>src/main/filtered-resources</directory>
      <filtering>true</filtering>
    </resource>
  </resources>
...
```

The same could of course happens in the `src/test` area.

So in Maven 3.4.0 the [super pom contains already such a configuration][MGN-2478] for
the `src/main/resources`, `src/main/filtered-resources`, as well as for
the `src/test/resources`, `src/test/filtered-resources`.

[jira-issues]: https://issues.apache.org/jira/secure/ReleaseNote.jspa?projectId=12316922&version=12333545
[change-1]: https://twitter.com/khmarbaise/status/741710019838775297
[maven-resources-filtering]: https://maven.apache.org/plugins/maven-resources-plugin/examples/filter.html
[non-filtered-extensions]: https://maven.apache.org/plugins/maven-resources-plugin/resources-mojo.html#nonFilteredFileExtensions
[MNG-2478]: https://issues.apache.org/jira/browse/MNG-2478
