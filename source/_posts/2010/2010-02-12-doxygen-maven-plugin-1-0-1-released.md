---
layout: post
title: "Doxygen Maven Plugin - 1.0.1 Released"
date: 2010-02-12 18:52:49
tags: Neuigkeiten,Maven
categories: [Neuigkeiten,Maven]
post-type: blog
---
Nachdem es nun einige Zeit gedauert hat, habe ich nun mit Unterstützung der <a href="http://www.sonatype.com">Firma Sonatype Inc.</a> das oben genannte <a href="http://www.supose.org/projects/show/mavendoxygen">Doxygen Maven Plugin</a> in das <a href="http://repo1.maven.org/maven2">Maven Central Repository </a> veröffentlichen können.

Die <a href="http://www.sonatype.com/people/2010/01/how-to-generate-pgp-signatures-with-maven/">Anleitung</a>, um eine Plugin in das Maven Central Repository zu bekommen beschreibt genau welche Schritte durchgeführt werden müssen. Das wichtigste dabei ist die Erstellung eines PGP Schlüssels. Es werden bestimmte Qualitätsanforderungen gestellt die auch geprüft werden. Hierbei ist es sehr interessant, dass man ein Maven Repository zur Verfügung gestellt bekommt, dass dann durch Unterstützung von <a href="http://www.sonatype.com/products/nexus">Nexus</a> in das Maven Central Repository promoted werden kann. Somit ist es recht einfach ein Maven Plugin allen Maven Benutzern zur Verfügung zu stellen.
