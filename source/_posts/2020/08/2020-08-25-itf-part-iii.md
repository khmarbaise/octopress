---
layout: post
title: "Maven Plugin Testing - In a Modern way - Part III"
date: 2020-08-25 22:45:12:21
comments: true
categories: [DevOps,Programming,Java,JDK,Maven,Maven-Plugins,Integration Testing Framework]
---
In the [second part of the series - Maven Plugin Testing - In a Modern way - Part II](https://blog.soebes.de/blog/2020/08/18/itf-part-ii/) 
we have seen how to make the basic integration test while checking the log output of Maven builds.

In third part we will dive into how Maven will be called by default during the
integration tests and how we can be influence that behaviour.

Let us begin with the following basic integration test (we ignore the project which 
is used for testing at the moment.)
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  void the_first_test_case(MavenExecutionResult result) {
     ...
  }
}
```
The above test will execute Apache Maven by using the following options by default:

* `--batch-mode`
* `--show-version`
* `--errors`

That means that each execution within the Integration Testing Framework will be 
done like this:
```
mvn --batch-mode --show-version --errors
```
To get that correctly working and in particular having a local cache for each integration
test case the integration testing framework will add: `-Dmaven.repo.local=...` 
to each call as well. This is necessary to get the following result:
```text
.
└──target/
   └── maven-it/
       └── org/
           └── it/
               └── FirstMavenIT/
                   └── the_first_test_case/
                       ├── .m2/
                       ├── project/
                       │   ├── src/
                       │   ├── target/
                       │   └── pom.xml
                       ├── mvn-stdout.log
                       ├── mvn-stderr.log
                       └── mvn-arguments.log
```
The option `-Dmaven.repo.local=...` can't be changed at the moment. The used
command line arguments are wrote into the `mvn-arguments.log` file which can be 
consulted for later analysis. So in the end a command line for an integration
test looks like this:
```
mvn -Dmaven.repo.local=<Directory> --batch-mode --show-version --errors package
```
The goal which is used (`package`) and how it can be changed will be handled in
Part IV of the series.

So far so good, but sometimes or maybe more often it is needed to add other command 
line options to a Maven call in particular in relationship with integration tests.

Sometimes your own plugin/extension will printout some useful information on debug
level but how to test that? We have mentioned before that the options which are 
used for an integration test does not contain the debug option. 

We can now express the need via this (`basic_configuration_with_debug`):
```java
@MavenJupiterExtension
class FailureIT {

  @MavenTest
  @DisplayName("The basic configuration should result in a successful build.")
  void basic_configuration(MavenExecutionResult project) {
    assertThat(project).isSuccessful();
  }

  @MavenTest
  @MavenOption(MavenCLIOptions.DEBUG)
  void basic_configuration_with_debug(MavenExecutionResult result) {
    assertThat(result)
        .isSuccessful()
        .out()
        .info()
        .containsSubsequence(
            "--- maven-enforcer-plugin:3.0.0-M1:enforce (enforce-maven) @ basic_configuration_with_debug ---",
            "--- jacoco-maven-plugin:0.8.5:prepare-agent (default) @ basic_configuration_with_debug ---",
            "--- maven-resources-plugin:3.1.0:resources (default-resources) @ basic_configuration_with_debug ---",
            "--- maven-compiler-plugin:3.8.1:compile (default-compile) @ basic_configuration_with_debug ---",
            "--- maven-resources-plugin:3.1.0:testResources (default-testResources) @ basic_configuration_with_debug ---",
            "--- maven-compiler-plugin:3.8.1:testCompile (default-testCompile) @ basic_configuration_with_debug ---",
            "--- maven-surefire-plugin:3.0.0-M4:test (default-test) @ basic_configuration_with_debug ---",
            "--- maven-jar-plugin:3.2.0:jar (default-jar) @ basic_configuration_with_debug ---",
            "--- maven-site-plugin:3.9.1:attach-descriptor (attach-descriptor) @ basic_configuration_with_debug ---"
        );
    assertThat(result)
        .isSuccessful()
        .out()
        .warn()
        .containsSubsequence(
            "Neither executionException nor failureException has been set.",
            "JAR will be empty - no content was marked for inclusion!");

    assertThat(result)
        .isSuccessful()
        .out()
        .debug()
        .containsSubsequence(
            "Created new class realm maven.api",
            "Project: com.soebes.itf.maven.plugin.its:basic_configuration_with_debug:jar:1.0",
            "Goal:          org.apache.maven.plugins:maven-resources-plugin:3.1.0:resources (default-resources)"
        );

  }
}
```
It's important to say that by using the `@MavenOption(..)` automatically all
other previously mentioned command line options will not being used anymore. 
In this example the final command line looks like this:
```
mvn -Dmaven.repo.local=<path> --debug package
```
So based on turning on debugging output it means that you can check debugging 
output like this:
```java
assertThat(result)
    .isSuccessful()
    .out()
    .debug()
    .containsSubsequence(
        "Created new class realm maven.api",
        "Project: com.soebes.itf.maven.plugin.its:basic_configuration_with_debug:jar:1.0",
        "Goal:          org.apache.maven.plugins:maven-resources-plugin:3.1.0:resources (default-resources)"
    );
```
If you like to have the `--batch-mode` option, `--show-version` as well as the `--error` option 
back in your test case you can (or have to) add them like this:
```java
  @MavenTest
  @MavenOption(MavenCLIOptions.BATCH_MDOE)
  @MavenOption(MavenCLIOptions.SHOW_VERSION)
  @MavenOption(MavenCLIOptions.ERRORS)
  @MavenOption(MavenCLIOptions.DEBUG)
  void basic_configuration_with_debug(MavenExecutionResult result) {
  ...
  }
```
The result will be that your Maven command line now looks like before including
the supplemental `--debug` option:
```
mvn -Dmaven.repo.local=<Directory> --batch-mode --show-version --errors --debug package
```
That shows that you can easily combine several command line options for a test case via
the `@MavenOption` annotation.

Some command line options in Maven need supplemental information like `--log-file <arg>` 
which requires the name of the log file to redirect all the output into.  
How can we express this with the `@MavenOption` annotation? This can simply 
being achieved like the following:
```java
  @MavenTest
  @MavenOption(QUIET)
  @MavenOption(SHOW_VERSION)
  @MavenOption(value = LOG_FILE, parameter = "test.log")
  void basic_configuration_with_debug(MavenExecutionResult result) {
  ...
  }
```
As you can see in the above example you have to give the option via the `value` 
of the annotation. The parameter of the option has to be given via `parameter`.
In this case we have used static imports to make it more readable. You can of 
course work without static imports like this (Just a matter of taste):

```java
  @MavenTest
  @MavenOption(MavenCLIOptions.QUIET)
  @MavenOption(MavenCLIOptions.SHOW_VERSION)
  @MavenOption(value = MavenCLIOptions.LOG_FILE, parameter = "test.log")
  void basic_configuration_with_debug(MavenExecutionResult result) {
  ...
  }
```
So what about using the same command line options for several test cases? 
You can simply add the command line options onto the test class level which 
can look like this:
```java
@MavenJupiterExtension
@MavenOption(MavenCLIOptions.FAIL_AT_END)
@MavenOption(MavenCLIOptions.NON_RECURSIVE)
@MavenOption(MavenCLIOptions.ERRORS)
@MavenOption(MavenCLIOptions.DEBUG)
class FailureIT {

  @MavenTest
  void case_one(MavenExecutionResult project) {
    ..
  }

  @MavenTest
  void case_two(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  void case_three(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  void case_four(MavenExecutionResult result) {
    ..
  }

}
```
This means that for each given test cases ( `case_one`, `case_two`, `case_three` 
and `case_four`) the same command line options will be used. Apart from that it 
is much more convenient to define the command line options only once and not for 
every single test case.

Wait a second. I want to execute `case_four` with different command line options? 
Ok no problem just define the set command line options onto that particular test case
like in the following example:

```java
@MavenJupiterExtension
@MavenOption(MavenCLIOptions.FAIL_AT_END)
@MavenOption(MavenCLIOptions.NON_RECURSIVE)
@MavenOption(MavenCLIOptions.ERRORS)
@MavenOption(MavenCLIOptions.DEBUG)
class FailureIT {

  @MavenTest
  void case_one(MavenExecutionResult project) {
    ..
  }

  @MavenTest
  void case_two(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  void case_three(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  @MavenOption(MavenCLIOptions.DEBUG)
  void case_four(MavenExecutionResult result) {
    ..
  }

}
```
The test case `case_four` will not inherit the command line options defined on the 
class level. It will use only those defined on the test case itself.

Now a usual developer question: I'm really lazy I don't want to write all those four
`MavenOption` annotation for each test class. In particular if I need to change those
command line options I have to go through each test class one by one?

There is of course a more convenient solution for that problem. This is called a 
meta annotation. We can simply create a meta annotation which we call `MavenTestOptions`.
This meta annotation looks like this:

```java
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RUNTIME)
@Inherited
@MavenOption(MavenCLIOptions.FAIL_AT_END)
@MavenOption(MavenCLIOptions.NON_RECURSIVE)
@MavenOption(MavenCLIOptions.ERRORS)
@MavenOption(MavenCLIOptions.DEBUG)
public @interface MavenTestOptions {
}
```
This meta annotation can now being used to change the test class of the 
previous example like this:
```java
@MavenJupiterExtension
@MavenTestOptions
class FailureIT {

  @MavenTest
  void case_one(MavenExecutionResult project) {
    ..
  }

  @MavenTest
  void case_two(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  void case_three(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  @MavenOption(MavenCLIOptions.DEBUG)
  void case_four(MavenExecutionResult result) {
    ..
  }

}
```
The above can be improved a little bit more. We can integrate the annotation `@MavenJupiterExtension`
into our self defined meta annotation like this (In the example project I have named the meta 
annotation `@MavenITExecution` to have different examples in one project.):

```java
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RUNTIME)
@Inherited
@MavenJupiterExtension
@MavenOption(MavenCLIOptions.FAIL_AT_END)
@MavenOption(MavenCLIOptions.NON_RECURSIVE)
@MavenOption(MavenCLIOptions.ERRORS)
@MavenOption(MavenCLIOptions.DEBUG)
public @interface MavenTestOptions {
}
```
Based on that we can change the test case to look like this: 

```java
@MavenTestOptions
class FailureIT {

  @MavenTest
  void case_one(MavenExecutionResult project) {
    ..
  }

  @MavenTest
  void case_two(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  void case_three(MavenExecutionResult result) {
    ..
  }

  @MavenTest
  @MavenOption(MavenCLIOptions.DEBUG)
  void case_four(MavenExecutionResult result) {
    ..
  }

}
```

So this it is for Part III. If you like to learn more about the [Integration Testing Framework][itf] 
you can consult the [users guide][users-guide]. If you like to know the state of the release you 
can take a look into the [release notes][release-notes].

If you have ideas, suggestions or found bugs please [file in an issue on github][issue].

An example of the shown uses cases can be [found on GitHub][example-iii].

<!-- 
Part I:
 Basic integration test; checking the build result; 

Part II:
 - Several Test cases
 - Checking build result in different ways.
 - Checking log output debug, info, warn etc.
   Assertions for maven log.

Part III:
 - Which options are used while defining none of them?
 - MavenOption
   - Single Option,
   - Multiple Option
   - Option with parameters
   - Meta Annotation (MavenDebug)
   - Options on class level
   - Self defined Meta Annotations
   - Combine @MavenJupiterExtension with MavenOption

Part IV:
 - Which goals are used by default?
 - Single Goal
 - Multiple Goals
 - Goals and replacements like 
   @MavenGoal("${project.groupId}:${project.artifactId}:${project.version}:set")
 - Meta Annotation
 - Goals on class level
 - Self defined Meta Annotations
 - Combine @MavenJupiterExtension with MavenGoal (global)
   (incl. MavenOptions).

Part V:
 - System Properties via @MavenProperty
 - Singly property
 - Multiple properties
 - Meta annotation
 - @MavenSkipTest (meta annotation)
 
Part X:
 - Maven Profiles
 - Single profile
 - Multiple profiles
 - Meta annotation

Part IV:
 - Profiles on interface level.
 - Goals on interface level.
 - Options on interface level? (reconsider?)
 - Executing on different platforms (Enabled/Disabled)
 - Executing different Maven versions?

Part V:
 - Grouping Test Cases
   - Nested classes
 - common local cache
 - Predefined repository content

Part X+2:
 - Single Project with several executions

Part X+3:
 - Checking JAR/WAR content.
 - Parallelization of IT's.
 
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
[example-iii]: https://github.com/khmarbaise/itf-example-article-part-iii