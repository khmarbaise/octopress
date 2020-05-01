---
layout: post
title: "Apache Maven Version 3.5.0-beta-1 Released"
date: 2017-03-25 11:00:25
comments: true
categories: [Neuigkeiten,BM,Maven]
---
The Apache Maven team would like to announce the release of [Maven 3.5.0-beta-1](https://maven.apache.org/).

NOTE: This is an BETA release. There is the potential that features may be
removed between this release and the first GA release in the 3.5.x release
line.
Please consult the Known Issues section below before use

You can download the appropriate sources, etc. from the archives section on
the download page as Maven 3.3.9 is still the recommended GA release

https://archive.apache.org/dist/maven/maven-3/3.5.0-beta-1/

Known Issues

The following issues were identified during release testing of this ALPHA
release but have not been deemed as release blockers:

* {% ajl MNG-6190 %} - maven-resolver-provider's `DefaultArtifactDescriptorReader` has mismatched constructor and initService methods (this issue does not affect normal usage of Maven)
* {% ajl MNG-6191 %} - `mvn -f` complains about illegal `readlink` option under macOS
* {% ajl MNG-6192 %} - The distribution zip file has unordered entries and some tools - most notably Maven wrapper - will fail to unzip the distribution

Why not Maven 3.4.0?

After Maven 3.3.9 was released, the Eclipse Aether project was retired and
the code base was migrated to the Apache Maven project.

The original goal for the 3.4.0 release was to replace Aether with the
exact same code after migration to the Apache Maven project and then
proceed with bug fixes to the resolver code as well as other areas of Maven.

The migration of the code between the two foundations took longer than
expected and as a result there were other changes committed to Maven core
that were outside the scope of intent for 3.4.0.

In order to refocus on the original intent for 3.4.0, the decision was
taken to revert the Maven core history to the point of the 3.3.9 release
and merge in the desired changes one at a time.

Because there had been a lot of communication about different features
being delivered and bugs fixed in Maven 3.4.0 and the new history may not
contain them in the first release, the decision was taken to forever burn
the 3.4.x release line.

More detail on this decision can be read in the [mailing list archive](
https://www.mail-archive.com/dev@maven.apache.org/msg112103.html).

Release Notes - Maven - Version 3.5.0-beta-1

Bugs:

 * {% ajl MNG-5895 %} - Problem with CI friendly usage of ${..} which is already defined via property in pom file.
 * {% ajl MNG-6057 %} - Problem with CI friendly usage of ${..} reactor order is changed
 * {% ajl MNG-6090 %} - CI friendly properties break submodule builds
 * {% ajl MNG-6170 %} - NPE in cases using Multithreaded -T X versions:set -DnewVersion=1.0-SNAPSHOT
 * {% ajl MNG-6173 %} - MavenSession.getAllProjects() should return all projects in the reactor
 * {% ajl MNG-6176 %} - Javadoc errors prevent release with Java 8
 * {% ajl MNG-6177 %} - The --file command line option of the Windows and Unix launchers does not work for directory names like "Spaces & Special Char"
 * {% ajl MNG-6180 %} - groupId has plain color when goal fails
 * {% ajl MNG-6181 %} - HttpClient produces a lot of noise at debug loglevel
 * {% ajl MNG-6183 %} - Dependency management debug message corrections.

Improvements:

 * {% ajl MNG-6078 %} - Can't overwrite properties which have been defined in .mvn/maven.config
 * {% ajl MNG-6115 %} - Add Jansi native library search path to our start scripts to avoid extraction to temp file on each run
 * {% ajl MNG-6179 %} - Remove unused prerequisites
 * {% ajl MNG-6189 %} - WARN if maven-site-plugin configuration contains reportPlugins element

New Feature:

 * {% ajl MNG-6182 %} - ModelResolver interface enhancement: addition of
resolveModel( Dependency ) supporting version ranges


Enjoy,

- The Apache Maven team

