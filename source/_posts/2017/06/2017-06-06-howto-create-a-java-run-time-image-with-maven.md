---
layout: post
title: "JDK9: Howto Create A Java Run-Time Image With Maven?"
date: 2017-06-06 20:15:00
comments: true
categories: [BM,Maven,JDK9]
---
At the moment JDK 9 is only available as [Early Access (EA)][ea-download] to
let the community take a look how it works and what can be improved. Apart from
all the news for example about the modular system [Jigsaw][jigsaw] etc. There
is one important question:

How can I create a Java Run-Time Image with Maven? But before we begin:
What is a Java Run-Time Image?

The simplest answer I can give: You have a running Java Runtime environment
where all parts have been removed which are not really used by the current
application. Based on the modularization of the Java Plattform itself you can
think of many parts which can be removed by a usuall application. This in the end
will give you the opportunity to deliver only the Java Run-Time Image including
your application. So this means in the target environment you do not need to
install a full blown JRE. This safes space in particular if you think about
Microservices.

There are a few things which need to be payed attention to related to this post:

Everything what is written here is:

 * Currently in a prove of concept state.
 * Everything here is speculative.

So this means it can become official Maven plugins or not. The intention is to
get some [feedback from interessted volunteers][feedback] to see others working with JDK9
and about their experiences and to see if Maven needs to go different ways or
if the current way is ok.

So let use start with the interesting part. We start with a [simple multi module project][jdk9-maven-example] 
and see how this works. The example project currently contains 
three modules `mod-1`, `mod-2` and `mod-jar`. The `mod-jar` is a usual jar project which produces
a `jar` file as result. 

The only important part is that this contains a `module-info.java` 
file which is compiled into the `jar` file. This jar file is a [modular JAR file][modular-jar], cause it
contains a `module-info.class` file at the root location of the jar.

The `mod-1` and `mod-2` are currently explictly producing [jmod files][jmod-file] which contain
the module name in its file name. At the moment those modules are placed into the
`target/jmods/` directory of the appropriate project.

So now we have summarized the different projects which produce either a jar or jmod file but 
to get a Java Run-Time Image we have to use the [jlink][jlink] command of JDK 9 which is the Java Linker
which produces the Run-Time Image. Then handling of jlink is currently put into the `mod-jlink` module
which contains a packaging of `jlink`. 

The example project uses two new created Maven plugins ([maven-jmod-plugn] and
[maven-jlink-plugin]) which currently implement the handling 
for `jmod` and the `jlink` packaging type. They exist only as `SNAPSHOT`s which are available
via the [Apache Software Foundation repository][asf-snapshot]. If you like to use them
you have to configure them into your [settings.xml] or in your [repository manager].
One more thing is needed to be set up: [toolchains] to configure the environment like where
to find the JDK9 etc. 

If you run the whole project via:
```
mvn clean package
...
[INFO] ------------------------------------------------------------------------
[INFO] Building com.soebes.nine.one 1.0-SNAPSHOT
[INFO] ------------------------------------------------------------------------
[INFO]
[INFO] --- maven-clean-plugin:3.0.0:clean (default-clean) @ com.soebes.nine.one ---
[INFO] Deleting /Users/kama/jdk-9-test/maven-example/mod-1/target
[INFO]
[INFO] --- maven-toolchains-plugin:1.1:toolchain (default) @ com.soebes.nine.one ---
[INFO] Required toolchain: jdk [ vendor='oracle' version='1.9' ]
[INFO] Found matching toolchain for type jdk: JDK[/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+172.jdk/Contents/Home]
[INFO]....
...
[INFO]
[INFO] --- maven-compiler-plugin:3.6.0:compile (default-compile) @ com.soebes.nine.one ---
[INFO] Toolchain in maven-compiler-plugin: JDK[/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+172.jdk/Contents/Home]
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 2 source files to /Users/kama/jdk-9-test/maven-example/mod-1/target/classes
[INFO]
...
...
[INFO]
[INFO] --- maven-jlink-plugin:3.0.0-SNAPSHOT:jlink (default-jlink) @ mod-jlink ---
[INFO] Toolchain in maven-jlink-plugin: jlink [ /Library/Java/JavaVirtualMachines/jdk1.9.0_ea+172.jdk/Contents/Home/bin/jlink ]
[INFO] The following dependencies will be linked into the runtime image:
[INFO]  -> com.soebes.examples.jdk9:com.soebes.nine.one:jmod:1.0-SNAPSHOT
[INFO]  -> com.soebes.examples.jdk9:com.soebes.nine.two:jmod:1.0-SNAPSHOT
[INFO]  -> com.soebes.examples.jdk9:com.soebes.nine.jar:jar:1.0-SNAPSHOT
[INFO] Building zip: /Users/kama/jdk-9-test/maven-example/mod-jlink/target/mod-jlink-1.0-SNAPSHOT.zip
[INFO]
[INFO] --- maven-site-plugin:3.6:attach-descriptor (attach-descriptor) @ mod-jlink ---
[INFO] Skipping because packaging 'jlink' is not pom.
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] parent ............................................. SUCCESS [  0.931 s]
[INFO] com.soebes.nine.one ................................ SUCCESS [ 17.019 s]
[INFO] com.soebes.nine.two ................................ SUCCESS [  1.007 s]
[INFO] com.soebes.nine.jar ................................ SUCCESS [  0.926 s]
[INFO] mod-jlink .......................................... SUCCESS [  2.602 s]
[INFO] ------------------------------------------------------------------------
[INFO] BUILD SUCCESS
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 23.200 s
[INFO] Finished at: 2017-06-06T20:08:54+02:00
[INFO] Final Memory: 19M/385M
[INFO] ------------------------------------------------------------------------
```
If everything works than you will find the Java Run-Time Image:
```
cd mod-jlink/target/jlink
~/jdk-9-test/maven-example/mod-jlink/target/jlink (master)$ ls -la
total 8
drwxr-xr-x   8 kama  staff  272 Jun  6 00:10 .
drwxr-xr-x   4 kama  staff  136 Jun  6 00:10 ..
drwxr-xr-x   4 kama  staff  136 Jun  6 00:10 bin
drwxr-xr-x   4 kama  staff  136 Jun  6 00:10 conf
drwxr-xr-x   7 kama  staff  238 Jun  6 00:10 include
drwxr-xr-x   3 kama  staff  102 Jun  6 00:10 legal
drwxr-xr-x  19 kama  staff  646 Jun  6 00:10 lib
-rw-r--r--   1 kama  staff   97 Jun  6 00:10 release
```
You can check this Java Run-Time first via:
```
~/jdk-9-test/maven-example/mod-jlink/target/jlink (master)$ bin/java --list-modules
com.soebes.nine.jar
com.soebes.nine.one@1.0-SNAPSHOT
com.soebes.nine.two@1.0-SNAPSHOT
java.base@9-ea
```
which shows that this JRE only contians those modules which are need. Of course you can
check the size of generated image on the hard drive:
```
~/jdk-9-test/maven-example/mod-jlink/target/jlink (master)$ du -h -d 1 .
144K    ./bin
 76K    ./conf
184K    ./include
 44K    ./legal
 35M    ./lib
 35M    .
```
So this means the whole Java Run-Time Image is only 35 [MiB] in size. You can check against a 
full fledged JRE and compare that with the 35 [MiB].

To test different modules in that Java Run-Time Image you can call them like this:
```
~/jdk-9-test/maven-example/mod-jlink/target/jlink (master)$ bin/java com.soebes.example.nine.jar.Main
Main from Java 9 (jar)
~/jdk-9-test/maven-example/mod-jlink/target/jlink (master)$ bin/java com.soebes.example.nine.one.Main
Main one from Java 9
~/jdk-9-test/maven-example/mod-jlink/target/jlink (master)$ bin/java com.soebes.example.nine.two.Main
Main two from Java 9
```

## Conclusion

This is the first step of Maven into a support of JDK 9 tools like [jlink] and [jmod]. Other tooling
like [maven-jdeps-plugin] already exist for a longer time. 

This currently is a prove of concept and not an official statement. This is intended to
get feedback of others working with JDK9 and see if we are doing right or not.

Apart from that you see the opportunities which JKD9 with it's Run-Time Images is offering. Based on the
current implementation of the plugins it would not be very complicated to migrate and existing 
application (only command line apps ??) to a Java Run-Time Image. 



[jlink]: https://openjdk.java.net/jeps/282
[runtimeimage]: https://openjdk.java.net/jeps/220
[jigsaw]: https://openjdk.java.net/projects/jigsaw/
[ea-download]: https://jdk.java.net/9/
[jdk9-maven-example]: https://github.com/khmarbaise/jdk9-jlink-jmod-example/tree/master/maven-example
[modular-jar]: https://cr.openjdk.java.net/~mr/jigsaw/spec/jar.html#Modular
[jmod-file]: https://openjdk.java.net/jeps/261#Packaging:-JMOD-files
[feedback]: https://github.com/khmarbaise/jdk9-jlink-jmod-example/issues
[maven-jmod-plugin]: https://svn.apache.org/repos/asf/maven/plugins/trunk/maven-jmod-plugin/
[maven-jlink-plugin]: https://svn.apache.org/repos/asf/maven/plugins/trunk/maven-jlink-plugin/
[maven-jdeps-plugin]: http://maven.apache.org/plugins/maven-jdeps-plugin/
[asf-snapshot]: https://repository.apache.org/content/repositories/snapshots/
[settings.xml]: https://maven.apache.org/settings.html
[repository manager]: https://maven.apache.org/repository-management.html 
[toolchains]: https://maven.apache.org/guides/mini/guide-using-toolchains.html
[MiB]: https://en.wikipedia.org/wiki/Binary_prefix#Adoption_by_IEC.2C_NIST_and_ISO
