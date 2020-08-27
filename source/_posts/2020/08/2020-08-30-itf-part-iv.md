---
layout: post
title: "Maven Plugin Testing - In a Modern way - Part IV"
date: 2020-08-30 20:15:21
comments: true
categories: [DevOps,Programming,Java,JDK,Maven,Maven-Plugins,Integration Testing Framework]
---
In the [preivous part of the series - Maven Plugin Testing - In a Modern way - Part III](https://blog.soebes.de/blog/2020/08/26/itf-part-iii/)
we have seen how to define command line options. In this part we will take a 
deeper look which goals will run for each test case and how we can change that.

Let us start with simple example test case like the following:
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  void the_first_test_case(MavenExecutionResult result) {
     ...
  }
}
```
If we ran that integration test Maven will be called like the following:
```
mvn -Dmaven.repo.local=<Directory> --batch-mode --show-version --errors package
```
We will concentrate on the part `package` in the above example.
This is a [life cycle phase][lifecycle] of Maven. So what can we do if we like to call
something like `mvn .. verify` instead? This can simply being achieved by using the
`@MavenGoal` annotation like this: 
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("verify")
  void the_first_test_case(MavenExecutionResult result) {
     ...
  }
}
```
So let us take a deeper look onto the following example:
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("verify")
  void first(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  void second(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  void third(MavenExecutionResult result) {
     ...
  }
}
```
The test case `first` will be called with the phase `verify` whereas 
`second` and `third` will be called with the `package`. So this means
you can overwrite the default behaviour for each test case separately.

Sometimes you want to execute Maven during an integration test like this: `mvn clean verify`
or in general with multiple life cycle phase. This can be achieved by using 
multiple `MavenGoal` annotations as in the following example:

```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("clean")
  @MavenGoal("verify")
  void first(MavenExecutionResult result) {
     ...
  }
  ...
}
```
Of course there are situations where you have a bunch of integration tests 
which needed to be executing the previously defined goals. This can handled 
by defining the `@MavenGoal` annotation on a class level instead like this:
```java
@MavenJupiterExtension
@MavenGoal("clean")
@MavenGoal("verify")
class BaseIT {

  @MavenTest
  void first(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  void second(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  void third(MavenExecutionResult result) {
     ...
  }
}
```
This also give the opportunity to let run a single test (or more than one) case 
within a test class with different goals depending on what you like to achieve.

Another example on how to define the `@MavenGoal` annotation on a class level
which looks like this:
```java
@MavenJupiterExtension
@MavenGoal("clean")
class GoalsOnClassIT {

  @MavenTest
  @DisplayName("This will check the goal which is defined on the class.")
  void goal_clean(MavenExecutionResult result) {
    assertThat(result)
        .isSuccessful()
        .out()
        .info()
        .containsSubsequence(
            "Scanning for projects...",
            "-------------------< com.soebes.katas:kata-fraction >-------------------",
            "Building kata-fraction 1.0-SNAPSHOT",
            "--------------------------------[ jar ]---------------------------------",
            "--- maven-clean-plugin:3.1.0:clean (default-clean) @ kata-fraction ---"
        );
    assertThat(result)
        .isSuccessful()
        .out()
        .warn().isEmpty();
  }
}
```
The next logical step is to create a meta annotation to make life easier. We would
like to combine `clean` and `verify` within a single annotation `@GoalsCleanVerify` 
which can be done like this:
```java
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RUNTIME)
@Inherited
@MavenGoal({"clean", "verify"})
public @interface GoalsCleanVerify {
}
```
Such kind of meta annotation can be used on class level (defined by the annotation 
itself) as well as on method level like this:
```java
@MavenJupiterExtension
@GoalsCleanVerify
class MetaAnnotationGoalIT {
 ...
}
```
So now lets think about [Part III](https://blog.soebes.de/blog/2020/08/26/itf-part-iii/) 
where we defined this meta annotation:
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
This meta annotation can now being enhanced by the needed `@MavenGoal` annotations.
```java
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RUNTIME)
@Inherited
@MavenOption(MavenCLIOptions.FAIL_AT_END)
@MavenOption(MavenCLIOptions.NON_RECURSIVE)
@MavenOption(MavenCLIOptions.ERRORS)
@MavenOption(MavenCLIOptions.DEBUG)
@MavenGoal("clean")
@MavenGoal("verify")
public @interface MavenTestOptions {
}
```
This means you can define easily your set of annotation or combination of command
line options and goals or more sophisticated combine it with `@MavenJupiterExtension`
like this:
```java
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RUNTIME)
@Inherited
@MavenJupiterExtension
@MavenOption(MavenCLIOptions.FAIL_AT_END)
@MavenOption(MavenCLIOptions.NON_RECURSIVE)
@MavenOption(MavenCLIOptions.ERRORS)
@MavenOption(MavenCLIOptions.DEBUG)
@MavenGoal("clean")
@MavenGoal("verify")
public @interface MavenTestOptions {
}
```
This will give us the option to use it like this:
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
This combines the given options with the defined goals in one single
annotation. If you need to change something you have to fix only a single
point.

So did we miss something? Yes we did. Sometimes you want to call your plugin with a separate
goal like this:
```
mvn org.test.maven.plugin:maven-x-plugin:goal
``` 
This can be achieved by using the `@MavenGoal` annotation like this:

```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("org.test.maven.plugin:maven-x-plugin:goal")
  void first(MavenExecutionResult result) {
     ...
  }
  ...
}
```
Now let us assume the given plugin is the one which should be tested via the given
integration test. That you need to define the correct groupId, artifactId, version and the
correct goal? But the problem is that with each release of your plugin the version changes etc.
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("${project.groupId}:${project.artifactId}:${project.version}:goal-to-test")
  void first(MavenExecutionResult result) {
     ...
  }
  ...
}
```
The placeholders `${project.groupId}`, `${project.artifactId}` and `${proejct.version}` are
exactly those informations from your project pom in which you define the coordinates of
the plugin are developing. This makes sure that only this plugin version is used and not 
being tried to download from central or other repositories during your integration tests.

Good examples can be found in 
[maven-invoker-plugin based integration tests](https://github.com/mojohaus/versions-maven-plugin/blob/master/src/it/it-compare-dependencies-001/invoker.properties).

So this it is for Part IV. If you like to learn more about the [Integration Testing Framework][itf] 
you can consult the [users guide][users-guide]. If you like to know the state of the release you 
can take a look into the [release notes][release-notes].

If you have ideas, suggestions or found bugs please [file in an issue on github][issue].

An example project which shows the previous example can be [found on GitHub][example-iv].

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
 - Execution on different JDK versions (Enabled/Disabled)
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
[example-iv]: https://github.com/khmarbaise/itf-example-article-part-iv
[lifecyle]: https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html