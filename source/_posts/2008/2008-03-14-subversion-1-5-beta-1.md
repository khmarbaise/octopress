---
layout: post
title: "Subversion 1.5 - Beta 1"
date: 2008-03-14 00:06:13
tags: SKM,Neuigkeiten,Neue Versionen,Subversion
categories: SKM,Neuigkeiten,Neue Versionen,Subversion
post-type: blog
---
Nun wird es langsam Ernst mit Subversion 1.5....[die erste Beta Version](http://subversion.tigris.org/servlets/ReadMsg?list=dev&msgNo=136032 "die erste Beta Version") ist 
erschienen und sollte gut getestet werden....
Was bietet Subversion 1.5. denn nun so neues?

Tja zuerst einmal, das viel gewünschte (Enterprise) Feature Merge-Tracking...
Es ist also nicht mehr nötig, die gemergten Versionen in der Log-Message zu notieren...das erledigt nun Subversion selbst.
Es ist auch möglich Changes nicht zu mergen ([Blocking changes](http://svnbook.red-bean.com/nightly/en/svn-book.html#svn.branchmerge.advanced.blockchanges "Blocking changes"))
Dann gibt es noch so Dinge wie [ChangeLists](http://svnbook.red-bean.com/nightly/en/svn-book.html#svn.advanced.changelists "ChangeLists"), die dazu dienen, zusammen 
gehörige Dateien etc. als eine Einheit betrachten zu können. Damit wird die Arbeit in der Working Copy(WC) vereinfacht hier an z.B. zwei Changes gleichzeitig in 
einer WC zu arbeiten. Bei einem Commit kann dann die ChangeList bennannt werden. Damit werden dann nur die Dateien commited die zur jeweiligen ChangeList gehören.
Ach ja da war ja noch das Thema mit der Konfliktbewältigung ähm..sorry Konflikt Behandlung. Das kann dann auftauchen, wenn svn update ausgelöst wurde und andere 
Kollegen hier Änderungen durchgeführt haben (Was ja nicht unüblich ist, andere arbeiten ja auch ;-)).
Dann ist es möglich diese [Interaktiv in die WC](http://svnbook.red-bean.com/nightly/en/svn-book.html#svn.tour.cycle.resolve "Interaktiv in die WC") einzuarbeiten 
und nicht wie bisher alles oder nichts. Subsumiert wird das Ganze dann unter *Interactive conflict resolution*
[Sparse-Checkouts](http://svnbook.red-bean.com/nightly/en/svn-book.html#svn.advanced.sparsedirs "Sparse-Checkouts"), Write-Through Proxy und wie ich finde noch 
eine recht interessante Änderung, nämlich dass svn:externals nun auch mit relativen Angaben arbeiten können.....
Und ganz viele Bug-Fixing
Den derzeitigen Stand des ChangeLog's....kann man [hier](http://svn.collab.net/repos/svn/trunk/CHANGES "hier") finden 
