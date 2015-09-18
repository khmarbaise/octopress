---
layout: post
title: "Berlin Expert Days"
date: 2015-09-18 15:26
comments: true
categories: [Neuigkeiten,BM,Maven]
---
I had the pleasure to do a talk on the [Berlin Expert Days][bedcon] about [Maven 3 and
beyond][1]. There had been many intersting questions about different Maven
aspects of Maven like the life cycle and about the the usage of different
features. For example the usable support of `${revision}` in [your pom file][3]
which can set via command line like the following:
```
mvn -Drevision=1.0-SNAPSHOT clean package
```

which seemed to be unknown. What me really astonished was that there had been
people who are still using Maven 2 where strongly recommended to migrate to
Maven 3. Furthermore there had been serveral interesting chats afterwards about
the usage of Maven etc. and best practices.

![So here are the slides of my talk as a PDF file.](/downloads/files/Maven3AndBeyond.pdf)

[bedcon]: http://bed-con.org/
[1]: http://bed-con.org/2015/talks/Maven-3-and-Beyond
[2]: http://maven.apache.org/docs/3.2.1/release-notes.html
[3]: https://github.com/khmarbaise/javaee/tree/mvn321
