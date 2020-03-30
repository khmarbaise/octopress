---
layout: post
title: "Stream.concat vs. new ArrayList Performance"
date: 2020-03-31 00:30:31
comments: true
categories: [Programming,Java]
---
During a code review I suggested a code improvement related to JDK8+ streams. The
original code looked very similar like the following:

```java
List<Element> result = content.getFancyStuffs().stream()
  .flatMap(item -> {
        List<Element> objects = new ArrayList<>();
        objects.add(item.getElement());
        objects.addAll(item.getElements());
        return objects.stream();
      })
  .collect(toList());
```
Some more details here. The `getFancyStuffs()` returns a list of `FancyStuff` elements.
The `FancyStuff` class contains two getters where `getElement()` returns a single `Element` 
whereas the `getElements()` returns (Guess what?) a list of `Element`'s.

The interesting part was the lambda which creates a new `ArrayList` and adds a single element
`objects.add(item.getElement())` and the second part which adds several elements 
via `objects.addAll(item.getElements)`.

My suggestion based on better readability was to use the following code instead:
```java
List<Element> result = content.getFancyStuffs()
  .stream()
  .flatMap(fs -> Stream.concat(Stream.of(fs.getElement()), fs.getElements().stream()))
  .collect(Collectors.toList());
```
So far so good. But after a time I began to think about the two solutions. I asked myself:
Which is the faster one? Which one uses more memory? (The usual questions a developer is asking? 
Don't you?).

So what would you guess which is the faster solution? The first one or the second one?
My guess was that the first solution will win, but based on some assumptions. This
means the number of elements which are coming through `content.getFancyStuffs().stream()..`
are more or less small (less than 20) and furthermore the number of elements wich are 
returned by `item.getElements()` are fairly small as well (less than 20).

The only thing which can help here to get a reliable answer is to measure it. 
No assumptions, no educated guesses etc. So I have to make a real performance measurement.
So I created a [separate project][performance-stream-concat] which really measures the performance.

So the first code part for performance measurement looks like this:
## Solution 1
```java
@Benchmark
public List<Element> with_new_arraylist(Container content) {
    return content.getFancyStuffs().stream().flatMap(item -> {
      ArrayList<Element> objects = new ArrayList<>();
      objects.add(item.getElement());
      objects.addAll(item.getElements());
      return objects.stream();
    }).collect(Collectors.toList());
}
```
and the second part:
## Solution 2
```java
@Benchmark
public List<Element> with_stream_concat(Container content) {
  return content.getFancyStuffs()
  .stream()
  .flatMap(fs -> Stream.concat(Stream.of(fs.getElement()), fs.getElements().stream()))
  .collect(Collectors.toList());
}
```
while writing the above code I thought about some parts of it and I got two other
possible variations.

## Solution 3
The following example where I put elements directly into the constructor of the 
`ArrayList`. This means it could only happen that in rarer cases the size of the
array list must be resized which depends on the number of elements in `item.getElements()`.
```java
@Benchmark
public List<Element> with_new_arraylist_constructor(Container content) {
  return content.getFancyStuffs().stream().flatMap(item -> {
    ArrayList<Element> objects = new ArrayList<>(item.getElements());
    objects.add(item.getElement());
    return objects.stream();
  }).collect(Collectors.toList());
}
```
## Solution 4
Finally this one where I already calculate the size of the final list by giving
the number of elements via the constructor. This will prevent the resizing of the
array list at all cause the size will fit always.
```java
@Benchmark
public List<Element> with_new_arraylist_constructor_size(Container content) {
  return content.getFancyStuffs().stream().flatMap(item -> {
    ArrayList<Element> objects = new ArrayList<>(item.getElements().size() + 1);
    objects.add(item.getElement());
    objects.addAll(item.getElements());
    return objects.stream();
  }).collect(Collectors.toList());
}
```

## Measurement

The measurement has been done on an [Intel Xeon Machine with 3.50GHz][tested-on-hardware] with
[CentOS Linux release 7.6.1810 (Core)][tested-on-os]. 
The full source code of the project can be found https://github.com/khmarbaise/performance-concat.

### Basic Measurement

So I began very simple only with the first two solutions (1+2):

 * [The Code](https://github.com/khmarbaise/performance-concat/blob/8a666ee61cf117b96ab374dc402df996ff188b7c/src/main/java/com/soebes/performance/streams/BenchmarkStreamConcat.java) 
 * [The detailed measurement result](https://github.com/khmarbaise/performance-concat/blob/8a666ee61cf117b96ab374dc402df996ff188b7c/docs/result-i.txt)

The following is only an excerpt of the above [The detailed measurement result](https://github.com/khmarbaise/performance-concat/blob/8a666ee61cf117b96ab374dc402df996ff188b7c/docs/result-i.txt)
```text
Benchmark                                 Mode  Cnt   Score   Error  Units
BenchmarkStreamConcat.with_new_arraylist  avgt   15  22.350 ± 1.415  us/op
BenchmarkStreamConcat.with_stream_concat  avgt   15  15.716 ± 2.561  us/op
```

So if you take a look at the results above you can already see that for a small amount of 
elements (49 getElements, 50 FanceStuff instances) the one with `stream_concat` is faster.
Hm..is this really true? Not a measuring error or coincidence?

### Parameterized Measurement

So reduce the likely of being an coincidence or a measuring error I change the code
which now takes a parameter and enhanced the number of elements. I stick with the 
two solutions (1+2). 

* [The code](https://github.com/khmarbaise/performance-concat/blob/52480c0648a97e89d0e5007db01212baf7c80536/src/main/java/com/soebes/performance/streams/BenchmarkStreamConcat.java)
* [The detailed measurement result](https://github.com/khmarbaise/performance-concat/blob/52480c0648a97e89d0e5007db01212baf7c80536/docs/result-ii.text)

The `getElements()` results always in 49 elements where as the number of `FancyStuff` 
elements varies (see `count`). The following result shows that the version
 with `stream_concat` is always faster.
```text
Benchmark                                 (count)  Mode  Cnt     Score     Error  Units
BenchmarkStreamConcat.with_new_arraylist       50  avgt   15    21.759 ±   0.797  us/op
BenchmarkStreamConcat.with_new_arraylist      100  avgt   15    43.309 ±   1.449  us/op
BenchmarkStreamConcat.with_new_arraylist     1000  avgt   15   498.693 ± 103.550  us/op
BenchmarkStreamConcat.with_new_arraylist     2000  avgt   15   988.483 ±  80.574  us/op
BenchmarkStreamConcat.with_new_arraylist     5000  avgt   15  3379.189 ± 376.885  us/op
BenchmarkStreamConcat.with_stream_concat       50  avgt   15    17.695 ±   3.601  us/op
BenchmarkStreamConcat.with_stream_concat      100  avgt   15    38.559 ±  13.014  us/op
BenchmarkStreamConcat.with_stream_concat     1000  avgt   15   458.131 ±  95.578  us/op
BenchmarkStreamConcat.with_stream_concat     2000  avgt   15   815.142 ± 183.491  us/op
BenchmarkStreamConcat.with_stream_concat     5000  avgt   15  2682.883 ± 287.596  us/op
```
Interestingly this is not only the case for larger number of elements. It is also for
a small number of elements the case.

### Running all solutions

So finally I ran all solutions (1+2+3+4) with different numbers (count, elementCount) with different
combinations. I honestly have to admit that I underestimated the time it took to finish that test (it took 13 hours+).

* [The detailed measurement result](https://github.com/khmarbaise/performance-concat/blob/e5dd257660a93670b203016fddb9a3ac2975f399/docs/result-vi.text)
* [The Code](https://github.com/khmarbaise/performance-concat/blob/e5dd257660a93670b203016fddb9a3ac2975f399/src/main/java/com/soebes/performance/streams/BenchmarkStreamConcat.java)

I just picked up some examples of the measured times here:
```text
BenchmarkStreamConcat.with_new_arraylist                        10            1000  avgt   15     77,358 ±   2,957  us/op
BenchmarkStreamConcat.with_new_arraylist_constructor            10            1000  avgt   15     76,431 ±   1,544  us/op
BenchmarkStreamConcat.with_new_arraylist_constructor_size       10            1000  avgt   15     73,156 ±   0,118  us/op
BenchmarkStreamConcat.with_stream_concat                        10            1000  avgt   15     68,461 ±   0,048  us/op
....
BenchmarkStreamConcat.with_new_arraylist                      1000            1000  avgt   15  12864,161 ± 164,193  us/op
BenchmarkStreamConcat.with_new_arraylist_constructor          1000            1000  avgt   15  12703,437 ± 346,234  us/op
BenchmarkStreamConcat.with_new_arraylist_constructor_size     1000            1000  avgt   15  12401,783 ± 387,433  us/op
BenchmarkStreamConcat.with_stream_concat                      1000            1000  avgt   15  11613,553 ± 632,684  us/op
```

### Another run

So I ran also a solution with all possible options im JMH which took very long (1 day + 15 hours+).

* [The detailed measurement result](https://raw.githubusercontent.com/khmarbaise/performance-concat/master/docs/result-v.text)

So I will pick up some examples of the measured times here:
```text
BenchmarkStreamConcat.with_new_arraylist                      1000             500      ss        3  22169330,000 ± 25379203,013   ns/op
BenchmarkStreamConcat.with_new_arraylist_constructor          1000             500      ss        3   6425606,000 ±  4699006,445   ns/op
BenchmarkStreamConcat.with_new_arraylist_constructor_size     1000             500      ss        3  22911512,667 ± 13112575,975   ns/op
BenchmarkStreamConcat.with_stream_concat                      1000             500      ss        3   5328312,333 ±  4162857,199   ns/op
...
BenchmarkStreamConcat.with_new_arraylist                      1000            1000      ss        3  13283635,000 ±  7645310,577   ns/op
BenchmarkStreamConcat.with_new_arraylist_constructor          1000            1000      ss        3  35622844,333 ± 49138969,434   ns/op
BenchmarkStreamConcat.with_new_arraylist_constructor_size     1000            1000      ss        3  14122526,333 ±  4304061,268   ns/op
BenchmarkStreamConcat.with_stream_concat                      1000            1000      ss        3  13405022,333 ± 17950218,966   ns/op
```

So finally the question comes: What does those numbers mean?

quote from the [JMH](https://github.com/openjdk/jmh) output:
> REMEMBER: The numbers below are just data. To gain reusable insights, you need to follow up on
> why the numbers are the way they are. Use profilers (see -prof, -lprof), design factorial
> experiments, perform baseline and negative tests that provide experimental control, make sure
> the benchmarking environment is safe on JVM/OS/HW level, ask for reviews from the domain experts.
> Do not assume the numbers tell you what you want them to tell.


[performance-stream-concat]: https://github.com/khmarbaise/performance-concat

[tested-on-hardware]: https://github.com/khmarbaise/performance-concat/blob/master/docs/tested-on-hardware.text
[tested-on-os]: https://github.com/khmarbaise/performance-concat/blob/e5dd257660a93670b203016fddb9a3ac2975f399/docs/tested-on-os.text