---
layout: post
title: "Maven 3: How Version Comparison Works?"
date: 2017-02-04 14:23:00
comments: true
categories: [bm,maven,maven best practice]
---
In the ancient time [before maven 3][history] the version of an artifact had to follow 
the pattern:
```
<majorversion [> . <minorversion [> . <incrementalversion ] ] [> - <buildnumber | qualifier ]>
```
so far so good. Now let us assume we have the following two versions:

 * 1.0.9.3.1
 * 1.0.10.11

What would you expect which version is newer than the other or the older one?
I suppose you would say: `1.0.9.3.1` is older than `1.0.10.11` or with other
words: `1.0.10.11` is newer than `1.0.9.3.1` or to express it in a more
mathematical way:

```
1.0.9.3.1 < 1.0.10.11
```

Or another example:

 * 1.0alpha10 
 * 1.0alpha2

So I assume that you have expected that Maven 2 should have handled that like this:

```
1.0alpha10 > 1.0alpha2
```

Unfortunately Maven 2 had handled them different because the previous versions
did not follow the above pattern which results into string based comparison of
the versions and finally into the following result:

```
1.0.9.3.1 > 1.0.10.11
1.0alpha10 < 1.0alpha2
```
which is obviously not the result you have expected.

Maven 3
-------
Starting with Maven 3 (released 2010!) the version comparison has been changed
but unfortunately the above myth keeps tenaciously.

So the first thing is that you can use as many digits as you like and separate them
by dots. This means the following versions are valid:

  Version     | Version |
-------------:|:---------|
           2  | 1  
         1.1  | 1.0 
       1.2.3  | 1.2.1 
     1.2.3.4  | 1.2.2.4 
   1.4.5.7.9  | 1.4.5.60.9 
  1.2.30.4.5  | 1.2.2.4.5 
   1.0.10.11  | 1.0.9.3.1 
  1.0alpha10  | 1.0alpha2 
         1.0  | 1.0.0 


Regarding the above list which version is mathematically greater,
greater or equal, less than, less or equal than the other?

  Version     | | Version |
-------------:|-|:---------|
           2  | > | 1  
         1.1  | > | 1.0 
       1.2.3  | > | 1.2.1 
     1.2.3.4  | > | 1.2.2.4 
   1.4.5.7.9  | < | 1.4.5.60.9 
  1.2.30.4.5  | > | 1.2.2.4.5 
   1.0.10.11  | > | 1.0.9.3.1 
  1.0alpha10  | > | 1.0alpha2 
         1.0  | = | 1.0.0 


So what about things like `1.6.0-RC1` ? Let us assume we have the following
versions:

* 1.6.0
* 1.6.0-RC1

So how does the comparison result look like? If you think a little you might
already know the solution. The `1.6.0-RC1` is of course older than `1.6.0` or
expressed mathematically:

```
1.6.0-RC1 < 1.6.0
```
This is because a release candidate is created before the final `1.6.0`
release. So other things could be concluded out of the above like this:

```
1.6.0-RC3 < 1.6.0-RC10 < 1.6.0
2.34.5.6-RC3 < 2.34.5.6-RC10 < 2.34.5.6
```

So what about things like milestones: `1.6.0-m1`? 

```
1.6.0-m1 < 1.6.0 
``` 
which is this way based on the assumption made above. Milestones are before the
final releases. So of course you can conclude ordering of milestones like this:

```
1.6.0-m1 < 1.6.0-m4
1.6.0-m4 < 1.6.0-m10
```
The above is also valid for the cases where we separate the milestone via a
dot instead of a dash.

```
1.6.0.m1 < 1.6.0.m4
1.6.0.m4 < 1.6.0.m10
```

You can do things like the following if you like:
```
1.6.0-m1.9.9.11 < 1.6.0-m1.9.10.11
```

So now we come to an important thing, if we compare the following 
two versions `1.6.0-m1` with `1.6.0.m1`. On the first glance
you might think those two versions are equal because they describe
a milestone with the same version `1.6.0`. The result of the comparison
in Maven is different:

```
1.6.0-m1 < 1.6.0.m1
```
This means in consequence that a part which is separated via `-` is less important
than a part wich is separated via `.`, or the part which is separated via `.`
has precedence over the part which is separated via `-`.


Snapshots
---------

We have only considered releases yet. So now let us take a look at SNAPSHOTs.
So let us try to see which version is before the other one in case of such
version `1.6.0-SNASPHOT` and `1.6.0.m1`? So you might already know the result.
The SNAPSHOT version is before the other one `1.6.0.m1` cause a SNAPSHOT means
there has no release before of `1.6.0`.

You can add the `-SNAPSHOT` part to each of the above examples but the results
will keep the same.

Experiments
-----------

If you like to experiment with some of the above examples or check your ideas
you can simply use your existing(?) Maven installation for this. Starting with
[Maven 3.2.5[maven-release-325] there is a command line interface which can
show you the comparision results for versions given on the command line like
this:

```
java -jar apache-maven-3.2.5/lib/maven-artifact-3.2.5.jar 1.6.0 1.6.0.m1
```

The output will look similar like this:
```
Display parameters as parsed by Maven (in canonical form) and comparison result:
1. 1.6.0 == 1.6
   1.6.0 > 1.6.0-rc1
2. 1.6.0-rc1 == 1.6-rc-1
```


[history]: https://maven.apache.org/docs/history.html#Maven_2
[maven-release-325]: https://maven.apache.org/docs/ Release 3.2.5
