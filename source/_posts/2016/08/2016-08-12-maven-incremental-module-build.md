---
layout: post
title: "Maven Incremental Module Build"
date: 2016-08-12 16:30:34
comments: true
categories: [BM,Maven,Maven Best Practice]
---
If you are working with a Maven Multi Module Build on command line it could
happen that you might think: Wouldn't it be nice to build only the modules
which you have changed and not all modules in the reactor.

You can of course control what you build by using the `--projects` command line
option and add the appropriate modules you would like to build. For example
like this:

```
mvn --projects module1,module2 clean package
```
But you need to think everytime you run the build about which modules have been
changed and you need to adapt the list of changed modules manually.

Apart from that you need to think about the case if your modules are used by
other modules in your build. This means `module1` is a module dependency of
another module. This can simply handled by Maven automatically by using the
command line option `--also-make-dependents` which will build the modules which
are dependencies of the modules given in the projects list.

```
mvn --projects module1,module2 --also-make-dependents clean package
```

There are often suggestions to change into the directory of the module you
would like to build but this is simply wrong. If you start the build there Maven
will read only the pom file of that single module and you have no chance of
letting Maven anlyze the modules and their needed order etc. So always keep in
the root directory of your multi module build and select the appropriate modules
via `--projects` option.

The above will of course fine but this is cumbersome.

All this steps I have described can be handled in an automatic way by
using the [The Incremental Module Builder extensions][imb].

To use the Incremental Module Build you need to run at best Maven 3.3.1+ and
Java 7 as Maven 3.3.1+ itself. Furthermore you should configure it via the
`extensions.xml` file in the `.mvn/` folder of your project which should look 
like this:
``` xml
<extensions xmlns="http://maven.apache.org/EXTENSIONS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/EXTENSIONS/1.0.0 http://maven.apache.org/xsd/core-extensions-1.0.0.xsd">
  <extension>
    <groupId>com.soebes.maven.extensions</groupId>
    <artifactId>incremental-module-builder</artifactId>
    <version>0.1.0</version>
  </extension>
</extensions>
```
Another prerequisite is having configured correctly the scm area in your root pom of the
project cause those information are used to analyze for changed files. You can run the 
incremental module builder via:

```
mvn -b incremental package
```
which will printout something similar like this:

```
~/ws-git/supose (master *)$ mvn -b incremental package
[INFO] Scanning for projects...
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Build Order:
[INFO]
[INFO] Subversion Repository Search Engine
[INFO] SupoSE :: Test
[INFO] SupoSE :: Filter
[INFO] SupoSE :: Filter : Filter Model
[INFO] SupoSE :: Filter : Filter
[INFO] SupoSE :: Core
[INFO] SupoSE :: CLI
[INFO] SupoSE :: WAR
[INFO] SupoSE :: Integration Test
[INFO] SupoSE :: Users Guide
[INFO] SupoSE :: Assembly
[INFO]  ------------------------------------
[INFO]  Maven Incremental Module Builder
[INFO]  Version: 0.1.0
[INFO]  ------------------------------------
[INFO]
[INFO] Using the IncrementalModuleBuilder implementation with a thread count of 3
[INFO] Executing: /bin/sh -c cd '/Users/kama/ws-git/supose' && 'git' 'rev-parse' '--show-toplevel'
[INFO] Working directory: /Users/kama/ws-git/supose
[INFO] Executing: /bin/sh -c cd '/Users/kama/ws-git/supose' && 'git' 'status' '--porcelain' '.'
[INFO] Working directory: /Users/kama/ws-git/supose
[INFO]  Changed file: supose-cli/pom.xml modified
[INFO] Changed Project: com.soebes.supose:supose-cli:jar:0.7.1-SNAPSHOT
[INFO] New Calculated Reactor:
[INFO]  SupoSE :: CLI
[INFO]  SupoSE :: Assembly
[INFO] Building project: com.soebes.supose:supose-cli:jar:0.7.1-SNAPSHOT
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building SupoSE :: CLI 0.7.1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-enforcer-plugin:1.4.1:enforce (enforce-maven) @ supose-cli ---
[INFO]
[INFO] --- buildnumber-maven-plugin:1.4:create (default) @ supose-cli ---
[INFO] Executing: /bin/sh -c cd '/Users/kama/ws-git/supose/supose-cli' && 'git' 'rev-parse' '--verify' 'HEAD'
[INFO] Working directory: /Users/kama/ws-git/supose/supose-cli
[INFO] Storing buildNumber: 2cf6fbf37dbd3a0922ebd607a5b0504e76a0fd76 at timestamp: 1470779925110
[INFO] Storing buildScmBranch: master
[INFO]
[INFO] --- maven-resources-plugin:3.0.1:resources (default-resources) @ supose-cli ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] Copying 1 resource
[INFO]
[INFO] --- maven-compiler-plugin:3.5.1:compile (default-compile) @ supose-cli ---
[INFO] Nothing to compile - all classes are up to date
[INFO]
[INFO] --- maven-resources-plugin:3.0.1:testResources (default-testResources) @ supose-cli ---
[INFO] Using 'UTF-8' encoding to copy filtered resources.
[INFO] Copying 1 resource
[INFO]
[INFO] --- maven-compiler-plugin:3.5.1:testCompile (default-testCompile) @ supose-cli ---
[INFO] Nothing to compile - all classes are up to date
[INFO]
[INFO] --- maven-surefire-plugin:2.19.1:test (default-test) @ supose-cli ---

-------------------------------------------------------
 T E S T S
-------------------------------------------------------
Running com.soebes.supose.cli.SuposeCLITest
Tests run: 22, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.527 sec - in com.soebes.supose.cli.SuposeCLITest

Results :

Tests run: 22, Failures: 0, Errors: 0, Skipped: 0

[INFO]
[INFO] --- maven-jar-plugin:3.0.2:jar (default-jar) @ supose-cli ---
[INFO]
[INFO] --- maven-site-plugin:3.5.1:attach-descriptor (attach-descriptor) @ supose-cli ---
[INFO] Building project: com.soebes.supose:supose-assembly:pom:0.7.1-SNAPSHOT
[INFO]
[INFO] ------------------------------------------------------------------------
[INFO] Building SupoSE :: Assembly 0.7.1-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-enforcer-plugin:1.4.1:enforce (enforce-maven) @ supose-assembly ---
[INFO]
[INFO] --- buildnumber-maven-plugin:1.4:create (default) @ supose-assembly ---
[INFO]
[INFO] --- maven-site-plugin:3.5.1:attach-descriptor (attach-descriptor) @ supose-assembly ---
[INFO]
[INFO] --- appassembler-maven-plugin:1.10:assemble (default) @ supose-assembly ---
[INFO]
[INFO] --- maven-assembly-plugin:2.6:single (default) @ supose-assembly ---
[INFO] Reading assembly descriptor: src/main/assembly/bin.xml
[INFO] Reading assembly descriptor: src/main/assembly/bin-unix.xml
[INFO] Reading assembly descriptor: src/main/assembly/src.xml
[INFO] Building zip: /Users/kama/ws-git/supose/supose-assembly/target/supose-assembly-0.7.1-SNAPSHOT-bin.zip
[INFO] Building tar: /Users/kama/ws-git/supose/supose-assembly/target/supose-assembly-0.7.1-SNAPSHOT-bin-unix.tar.gz
[INFO] Building tar: /Users/kama/ws-git/supose/supose-assembly/target/supose-assembly-0.7.1-SNAPSHOT-src.tar.gz
[INFO] Building zip: /Users/kama/ws-git/supose/supose-assembly/target/supose-assembly-0.7.1-SNAPSHOT-src.zip
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] SupoSE :: CLI ...................................... SUCCESS [ 16.145 s]
[INFO] SupoSE :: Assembly ................................. SUCCESS [  2.425 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 18.853 s (Wall Clock)
[INFO] Finished at: 2016-08-09T23:59:02+02:00
[INFO] Final Memory: 27M/437M
[INFO] ------------------------------------------------------------------------
```
As you can see the Incremental Module Builder will analyze automatically which
modules have been changed and will also build the dependent modules.
There is one point which is not very convinient. You always need to give on command line
the `-b incrmental` part. But this can be handled by using the `.mvn/maven.config` file
with the following content:
```
-b incremental
```
form this point on you can do it simply via:
```
mvn package
```
If you like to prevent usage of the incremental module build you can simply force this by
using this:
```
mvn -b multithreaded package
```
which is the default which is used by Maven.

Currently the Incremental Module Builder is in a proof of concept state but
it works for me and helped me a lot. If you find issues please don't hesitate to
[file in an issue report][issues]. Apart from that any feedback is welcome.


[issues]: https://github.com/khmarbaise/incremental-module-builder/issues
[imb]: https://github.com/khmarbaise/incremental-module-builder
