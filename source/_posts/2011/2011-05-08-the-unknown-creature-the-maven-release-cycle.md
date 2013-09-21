---
layout: post
title: "The unknown creature - The Maven Release Cycle"
date: 2011-05-08 11:18:54
tags: Neuigkeiten,Maven
categories: Neuigkeiten,Maven
post-type: blog
---
<p>In the meantime often people use <a href="http://maven.apache.org"  title="Maven">Maven</a> to build their software, but when it comes to the time to release an artifact, they sometimes do unusual things in my opinion.  I've often observed that they manually set the version numbers to the release version (just removing the <strong>-SNAPSHOT</strong> from it) and build by hand and do the deploy the same way.</p>
<p>But Maven is better than you think. Maven can do the whole thing within a single command.</p>
<pre>
mvn --batch-mode release:prepare release:perform
</pre>
