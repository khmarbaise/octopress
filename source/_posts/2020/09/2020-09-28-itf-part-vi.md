---
layout: post
title: "Maven Plugin Testing - In a Modern way - Part VI"
date: 2020-09-28 20:25:34
comments: true
categories: [DevOps,Programming,Java,JDK,Maven,Maven-Plugins,Integration Testing Framework]
---
In the [previous part of the series - Maven Plugin Testing - In a Modern way - Part V](https://blog.soebes.de/blog/2020/09/10/itf-part-v/)
we have seen how to define system properties to run Maven. In this part we will take a 
deeper look how we can define profile(s) for a Maven call to be used.

Let us take a look at a simple example taken from the previous part.
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
This will run Maven with the goal `verify`. In real life it makes sometimes sense to run integration
tests only by activating a profile like this:
```
mvn verify -Prun-its
``` 
So the question is now: How can we do that in the [Integration Testing Framework][itf]? This
can be achieved by using the `@MavenProfile` annotation like this: 
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("verify")
  @MavenProfile("run-its")
  void the_first_test_case(MavenExecutionResult result) {
     ...
  }
}
```
This would execute our integration with the following command line (except the things
we mentioned in previous parts of the series; Just omitted them for brevity.):
```
mvn verify -Prun-its
```
In the following example you can see that the `@MavenProfile` annotation used only
on the method `first`:
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("verify")
  @MavenProfile("run-its")
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
This will execute all above integration test cases except the `first` without a profile.

The `@MavenProfile` annotation can be put on different methods for running a different
profile within different test cases like this:
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("verify")
  @MavenProfile("run-its")
  void first(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  void second(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  @MavenProfile("run-e2e")
  void third(MavenExecutionResult result) {
     ...
  }
}
```
The above example would execute the test case `third` with the given 
profile `run-e2e` activated on command line and of course the `first` test
case with the given profile `run-its`.

There are cases where it is needed to run a bunch of integration tests with the
same profile which can be achieved by defining the `@MavenProfile` annotation on the 
class level like the following:
```java
@MavenJupiterExtension
@MavenProfile("run-its")
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
This will result in executing all three test cases using the same profile. Now let us think 
about another scenario. You have defined a set of integration tests (let us assume 25) 
and create the appropriate test class based on the pattern of the above. Now you have
to add a single test case which should not use the profile which is defined on the class level.
It should use a different one. 

There are two solutions for this. The first one would be to create a separate integration
test class which defines the appropriate profile on the class- or on the method level 
(it is a matter of taste). The other solution would be to define another test case method
with another `@MavenProfile` annotation on it as the following example shows: 

```java
@MavenJupiterExtension
@MavenProfile("run-its")
class BaseIT {

  @MavenTest
  @MavenGoal("verify")
  void first(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  @MavenProfile("run-somethingdifferent")
  void second(MavenExecutionResult result) {
     ...
  }

  @MavenTest
  void third(MavenExecutionResult result) {
     ...
  }
}
```
The result will be to execute the test cases `first` and `third` with the
`-Prun-its` profile and the `second` test case will be executed with the
`run-somethingdifferent` profile. In other words it means the defined profiles
are not additive. Let me show an example of a limitation of this concept. If you would
like to have the `second` test case executed without a profile at all this is not possible. 
This would lead into the solution having to define a separate class instead.

Apart from that there are cases where it is useful to define several profiles on a Maven build
like this:
```
mvn -Prun-its,run-e2e
```
This can also done via using several `@MavenProfile` annotations on the appropriate
test case (or on the class level) like this:
```java
@MavenJupiterExtension
class BaseIT {

  @MavenTest
  @MavenGoal("verify")
  @MavenProfile("run-its")
  @MavenProfile("run-e2e")
  void the_first_test_case(MavenExecutionResult result) {
     ...
  }
}
```
So based on the previous parts of the series you could conclude that it is possible to
define your own meta annotation to make combinations easier. 

```java
@Target({ElementType.METHOD, ElementType.TYPE})
@Retention(RUNTIME)
@Inherited
@MavenProfile("run-its")
@MavenProfile("run-e2e")
public @interface ExecuteIntegrationAndEndToEnd {
}
```
This is not limited to the `@MavenProfile` annotation. You can cominate that
with the annotation like `@MavenGoal` etc. as mentioned in the previous articles
of the series.


So this it is for Part VI. If you like to learn more about the [Integration Testing Framework][itf] 
you can consult the [users guide][users-guide]. If you like to know the state of the release you 
can take a look into the [release notes][release-notes].

If you have ideas, suggestions or found bugs please [file in an issue on github][issue].

An example project which shows the previous example can be [found on GitHub][example-vi].

<!-- 
Part VII:
 - Grouping Test Cases
   - Nested classes
 - common local cache
 - Predefined repository content
   - Define parent with versions for different test projects
   - Special dependencies

Part VIII:
 - Profiles on interface level.
 - Goals on interface level.
 - Options on interface level? (reconsider?)

Part IX:
 - Executing on different platforms (Enabled/Disabled)
 - Execution on different JDK versions (Enabled/Disabled)
 - Executing different Maven versions? (check this?)

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
[example-vi]: https://github.com/khmarbaise/itf-example-article-part-vi
[lifecycle]: https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html