---
layout: post
title: "How Important is a Repository Manager?"
date: 2016-05-15 15:14
comments: true
categories: [Neuigkeiten,BM,Maven,Repository Manager,Nexus,Maven-Best-Practice]
---
Do you know how many downloads are done from [Maven Central][maven-central]
during a month? I was not aware of that as well. 
As a [PMC member][pmc-member-khmarbaise] of the [Apache Maven Project][apache-maven] I 
have the privilege of having access to the statistics of Maven Central.

So I checked the statistics of Maven Central. I can tell you that in the
[groupId org.apache.maven][ORG.APACHE.MAVEN] were more than 27 million
(28,933,147) downloads in April 2016. This means in other
words more than 964,438 downloads per day or more than 11 downloads per second.

The following chart gives you an impression of the trend over the last year. 

![Downloads of group org.apache.maven](/downloads/files/central/MavenDownloads.png)

```
| Period  | Downloads |
| ------- | --------- |
| 04.2015 |  7,847,302|
| 05.2015 |  9,179,019|
| 06.2015 |  9,916,411|
| 07.2015 | 13,908,913|
| 08.2015 | 14,548,666|
| 09.2015 | 15,965,751|
| 10.2015 | 16,477,754|
| 11.2015 | 16,404,231|
| 12.2015 | 19,106,721|
| 01.2016 | 19,607,497|
| 02.2016 | 21,419,699|
| 03.2016 | 27,469,986| 
| 04.2016 | 28,933,147|
```

What are the consequences for you as a consumer of Maven Central? You should
think about the load you are continously producing on the infrastructure of 
[Maven Central][maven-central-infrastructure].

But now the question arises what can you do? The simple answer is: 
[Use a repository manager][repository-manager].

It does not matter if you are in a corporate environment or more or less alone.
By using a [Repository Manager][repository-manager] you will reduce the load 
on Maven Central which is only one aspect of the story.

One other very important aspect is that you can release artifacts in your 
corporate environment into your repository manager without making it available
to the public via Maven Central or other services like that.

And of course we should think about the future:

```
A long time ago in a galaxy far far away...
```

What does this mean? Simply if Maven Central might be down or vanishes away some time
in the furture you have your own repository manager with all the artifacts needed 
to build your own artifacts within your network.

There are [a few rules to use Maven Central to keep the stability of Maven Central][central-faq].
The most important one is that an released artifact is immutable. This means
if you have published it to Maven Central the artifact can not be changed anymore.
There does not exist an exception to that rule. 

The [NPM Problem][npm-desaster] has shown 
that those rules are very good rules. I did not understand why
someone could simply change or delete artifacts from a repository 
that is consumed by other people. This breaks any reliability.

If it happens that someone really has to remove an artifact from Maven Central because
of Copyright issues, then you are safe by using a repository manager cause
you have a copy in your repository.

So running a repository manager is always a wise decision.

[maven-central]: https://search.maven.org/
[maven-central-infrastructure]: https://central.sonatype.org/pages/about.html
[ORG.APACHE.MAVEN]: https://search.maven.org/#search%7Cga%7C1%7Cg%3A%22org.apache.maven%22
[pmc-member-khmarbaise]: https://maven.apache.org/team-list.html#khmarbaise
[apache-maven]: https://maven.apache.org/
[repository-manager]: https://maven.apache.org/repository-management.html
[npm-desaster]: http://blog.npmjs.org/post/141577284765/kik-left-pad-and-npm
[central-faq]: http://central.sonatype.org/articles/2014/Feb/06/can-i-change-a-component-on-central/
