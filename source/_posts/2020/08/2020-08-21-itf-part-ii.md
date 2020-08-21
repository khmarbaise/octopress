---
layout: post
title: "Maven Plugin Testing - In a Modern way - Part II"
date: 2020-08-17 23:10:38
comments: true
categories: [DevOps,Programming,Java,JDK,Maven,Maven-Plugins,Integration Testing Framework]
---
In the [first part of the series - Maven Plugin Testing - In a Modern way - Part I](https://blog.soebes.de/blog/2020/08/18/itf-part-i/) 
we have seen how to make the basic setup with The [Integration Testing Framework][itf] and run very basic
integration test. 

In this second part we will take a deeper look into other aspects of testing 
Maven plugins in particular how we check the logging output of a Maven build process.

Let us begin with writing more than a single integration test case. You can of 
course write multiple test cases within a single test class like the following:

```java
@MavenJupiterExtension
class SeveralMavenIT {

  @MavenTest
  void the_first_test_case(MavenExecutionResult result) {
     ...
  }
  @MavenTest
  void the_second_test_case(MavenExecutionResult result) {
     ...
  }
  @MavenTest
  void the_third_test_case(MavenExecutionResult result) {
     ...
  }
}
```
Apart from the test cases themself we need the according projects which are used as test 
projects which looks like this:

```text
.
└── src/
    └── test/
        └── resources-its/
            └── org/
                └── it/
                    └── SeveralMavenIT/
                        ├── the_first_test_case/
                        │   ├── src/
                        │   └── pom.xml
                        ├── the_second_test_case/
                        │   ├── src/
                        │   └── pom.xml
                        └── the_this_test_case/
                            ├── src/
                            └── pom.xml
```
So after we have executed the integration tests (`mvn verify`) the resulting
directory structure will look like this:
```
.
└──target/
   └── maven-it/
       └── org/
           └── it/
               └── SeveralMavenIT/
                   ├── the_first_test_case/
                   │   ├── .m2/
                   │   ├── project/
                   │   │   ├── src/
                   │   │   ├── target/
                   │   │   └── pom.xml
                   │   ├── mvn-stdout.log
                   │   ├── mvn-stderr.log
                   │   └── other logs
                   ├── the_second_test_case/
                   │   ├── .m2/
                   │   ├── project/
                   │   │   ├── src/
                   │   │   ├── target/
                   │   │   └── pom.xml
                   │   ├── mvn-stdout.log
                   │   ├── mvn-stderr.log
                   │   └── mvn-arguments.log
                   └── the_third_test_case/
                       ├── .m2/
                       ├── project/
                       │   ├── src/
                       │   ├── target/
                       │   └── pom.xml
                       ├── mvn-stdout.log
                       ├── mvn-stderr.log
                       └── mvn-arguments.log
```
Based on the resulting directory structure you can see each test case 
completely separated from each other. This means also that each test case contains 
it's own maven cache (`.m2/repository`). You can find also the separated log file outputs and
the separate `project` directory which contains the test project after the test run. That
is very helpful for later issue analysis. 

So now let us take a deeper look into the test cases:

```java
  @MavenTest
  void the_first_test_case(MavenExecutionResult result) {
     
  }
```
In each test you have seen a parameter to the test method `MavenExecutionResult result`.
The injected parameter gives you access to the result of the test build of project.

This [class contains appropriate methods][mavenexecutionresult] to access the result
of the build process, the project cache, the project itself (in other words to the directory) 
and of course to the different logging output files which have been created during the run 
of the test.

So the first thing you usually check would be if the built has been successful or not. This depends
on the type of integration test you are writing. This can be achieved by using the following:

```java
assertThat(result).isSuccessful();
``` 
This expects the built being successful as you already suspected. You can of course write a test
which assumes that your built must fail which can be expressed like this:
```java
assertThat(result).isFailure();
``` 
So the `isSuccessful()` means the return code `0` whereas `isFailure()` represents 
a return code which is not `0`.

You can combine the check for a successful build and no warning output like this:
```java
assertThat(result)
    .isSuccessful()
    .out()
    .warn().isEmpty();
```
So `.out()` will access the created output file of the build `mvn-stdout.log`. The `.warn()`
will filter out all lines which start with `[WARNING] `. The `.isEmpty()` is part of [AssertJ][assertj] 
framework for assertion against lists which implies that the result is empty.

So now let us check some output which is produced by a usual build. The output emits `[INFO] ` so the test
can use `.out().info().` instead which looks like this:
```java
@MavenJupiterExtension
class FirstIT {
  void base_test (MavenExecutionResult result) {
    assertThat(result)
        .isSuccessful()
        .out()
        .info()
        .containsSubsequence(
            "--- maven-enforcer-plugin:3.0.0-M1:enforce (enforce-maven) @ kata-fraction ---",
            "--- jacoco-maven-plugin:0.8.5:prepare-agent (default) @ kata-fraction ---",
            "--- maven-resources-plugin:3.1.0:resources (default-resources) @ kata-fraction ---",
            "--- maven-compiler-plugin:3.8.1:compile (default-compile) @ kata-fraction ---",
            "--- maven-resources-plugin:3.1.0:testResources (default-testResources) @ kata-fraction ---",
            "--- maven-compiler-plugin:3.8.1:testCompile (default-testCompile) @ kata-fraction ---",
            "--- maven-surefire-plugin:3.0.0-M4:test (default-test) @ kata-fraction ---",
            "--- maven-jar-plugin:3.2.0:jar (default-jar) @ kata-fraction ---",
            "--- maven-site-plugin:3.9.1:attach-descriptor (attach-descriptor) @ kata-fraction ---"
        );
  }
}
```
The [`.containsSubsequence(..)`][containssubsequence] checks that the sequence 
is in the correct order with optional supplemental parts in between.  

While writing plugins/extensions it sometimes happens that you emit an information 
on WARN Level to give some hints what needs to be mentioned but will not fail a build.

The maven-jar-plugin for example will emit a warning if no content will be added into the jar. This
could be checked like the following:
```java
assertThat(result)
    .isSuccessful()
    .out()
    .warn()
    .contains("JAR will be empty - no content was marked for inclusion!");
```
So this can be combined to create a more comprehensive test case like this:

```java
@MavenJupiterExtension
class FailureIT {

  @MavenTest
  void basic_configuration_checking_logout(MavenExecutionResult result) {
    assertThat(result)
        .isSuccessful()
        .out()
        .info()
        .containsSubsequence(
            "--- maven-enforcer-plugin:3.0.0-M1:enforce (enforce-maven) @ basic_configuration_checking_logout ---",
            "--- jacoco-maven-plugin:0.8.5:prepare-agent (default) @ basic_configuration_checking_logout ---",
            "--- maven-resources-plugin:3.1.0:resources (default-resources) @ basic_configuration_checking_logout ---",
            "--- maven-compiler-plugin:3.8.1:compile (default-compile) @ basic_configuration_checking_logout ---",
            "--- maven-resources-plugin:3.1.0:testResources (default-testResources) @ basic_configuration_checking_logout ---",
            "--- maven-compiler-plugin:3.8.1:testCompile (default-testCompile) @ basic_configuration_checking_logout ---",
            "--- maven-surefire-plugin:3.0.0-M4:test (default-test) @ basic_configuration_checking_logout ---",
            "--- maven-jar-plugin:3.2.0:jar (default-jar) @ basic_configuration_checking_logout ---",
            "--- maven-site-plugin:3.9.1:attach-descriptor (attach-descriptor) @ basic_configuration_checking_logout ---"
        );
    assertThat(result)
        .isSuccessful()
        .out()
        .warn()
        .contains("JAR will be empty - no content was marked for inclusion!");

  }
}
```
If you write a plugin which contains a parameter for encoding an output like this
(might look familiar to you) should be produced:
```
Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
```
This can be checked within a test case like this:

```java
assertThat(result)
  .out()
  .warn()
  .containsExactly("Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!");
```

To get a more comprehensive view how a real example looks like you can take a 
look at the [github exmaple][example-ii]. More information about [The Integration Testing Framework][itf]
can be found in the [users guide][users-guide].

<!-- 
Part I:
 Basic integration test; checking the build result; 

Part II:
 - Several Test cases
 - Checking build result in different ways.
 - Checking log output debug, info, warn etc.
   Assertions for maven log.
 
Part III:
 - Different Goals, System Properties, Command line options
 - Default goals, options.

Part IV:
 - Executing on different platforms (Enabled/Disabled)

Part V:
 - Grouping Test Cases
   - Nested classes
 - common local cache
 - Predefined repository content

Part X+2:
 - Single Project with several executions

Part III:
 - Checking JAR/WAR content.
 
 -->





[issue]: https://github.com/khmarbaise/maven-it-extension/issues
[users-guide]: https://khmarbaise.github.io/maven-it-extension/itf-documentation/usersguide/usersguide.html
[release-notes]: https://khmarbaise.github.io/maven-it-extension/itf-documentation/release-notes/release-notes.html
[background]: https://khmarbaise.github.io/maven-it-extension/itf-documentation/background/background.html
[itf]: https://github.com/khmarbaise/maven-it-extension
[junit-jupiter]: https://junit.org/junit5/docs/current/user-guide/
[junit-jupiter-extension]: https://junit.org/junit5/docs/current/user-guide/#extensions
[assertj]: https://assertj.github.io/doc/
[maven-failsafe-plugin]: https://maven.apache.org/surefire/maven-failsafe-plugin/index.html
[maven]: https://maven.apache.org
[containssubsequence]: https://www.javadoc.io/doc/org.assertj/assertj-core/latest/org/assertj/core/api/ListAssert.html#containsSubsequence(ELEMENT...)
[mavenexecutionresult]: https://javadoc.io/doc/com.soebes.itf.jupiter.extension/itf-extension-maven/latest/com/soebes/itf/jupiter/maven/MavenExecutionResult.html
[example-ii]: https://github.com/khmarbaise/itf-example-article-part-ii