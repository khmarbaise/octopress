---
layout: post
title: "SupoSE Release 0.6.2 Calypso ist nun da"
date: 2010-06-11 18:59:57
tags: SKM,Neue Versionen,Subversion,SupoSE
categories: SKM,Neue Versionen,Subversion,SupoSE
post-type: blog
---
Eine neue Release von [SupoSE](http://www.supose.org/wiki/supose) ist nun fertig. 

+ User visible Changes/Enhancements.
    + Upgrade to SVNKit 1.3.X (Support for SVN 1.6.X repositories) (#218)
    + Enormous performance enhancements for the scan command (#309)
    + Updated to Java 1.6 (#235)
    + Removed the dfilename and dpath which had been introduced in Release 0.6.0 to reduce the Index size finger print (#241).
    + Removed display property prefix (#310)
    + Output formatting of --help has been changed (#36)
    + quartz.properties are now located in the etc folder
    + Formatting problem if more than 9999 items in changeset (#314)
    + Copyright updated to 2010 (#308)
    + Updated the Build/Run Documentation (#247)
+ Fixed Bugs
    + Fuzzy search had been broken (#199)
    + README will not correctly recognized (#215)
    + Searching for full qualified filenames didn't work (#216)
    + Couldn't search for files with a dot (#246)
+ Won't be fixed:
    + Support for 1.1.X Repositories which fails with SVNKit (#34, #141)
+ Build Changes
    + Fixed missing dependencies for bouncycastle which is needed for PDF files (#250)
    + Analyzed the dependencies in Maven build (#225)
    + Updated to Tika 0.4, 0.5, 0.6, 0.7 (#219, #239, #266, #304)
    + Updated to ANTLR3 Maven Plugin (#201, #298)
    + Updated to SVNKit 1.3.1 (#218)
    + Updated Quartz Scheduler to 1.7.3 (#303)
    + Update Maven License Plugin from 1.5.0 to 1.6.1 (#311)
    + NoSuchElementException during Site build (#300)
    + problem in generated documentation (#301)
    + Checked compatibility with Maven 3-beta-1
+ Other changes
    + Fixed Comments for revisions r439-r441 (#259)
+ Known Limitations
    + At the moment the Job Scheduler does not contain the performance improvements (#309)

Das [Unix binary](http://www.supose.org/attachments/download/60/supose-0.6.2-bin-unix.tar.gz) läuft auf Linux als auch auf Mac OS X. 
Für [Windows](http://www.supose.org/attachments/download/59/supose-0.6.2-bin.zip) ist selbstverständlich auch gesorgt.
