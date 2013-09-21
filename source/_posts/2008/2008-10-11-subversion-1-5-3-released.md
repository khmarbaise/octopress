---
layout: post
title: "Subversion 1.5.3 - Released"
date: 2008-10-11 11:08:00
tags: SKM,Neue Versionen,Subversion
categories: SKM,Neue Versionen,Subversion
post-type: blog
---
Nun ist es so weit, es gibt einen neue Release von [Subversion 1.5.3](http://subversion.tigris.org/servlets/NewsItemView?newsItemID=2164 "Subversion 1.5.3").

Die [Release Notes](http://subversion.tigris.org/svn_1.5_releasenotes.html "Release Notes") beschreiben die Änderungen insgesamt und der 
[Change Log](http://svn.collab.net/repos/svn/tags/1.5.3/CHANGES "Change Log") genau die Änderungen pro Release.


+ User-visible changes:
  + Fortsetzung switch nach der löschung von lokal modifizierten Verzeichnissen(issue #2505)
  + Update der bash_completion für die Kompatibilität mit 1.5 (r32900, -11, -12)
  + Verbesserung von 'svn merge' Ausführungszeit um 30% auf Windows (r33447)
  + Wiederverwendung der Netzwerk Session während 'svn merge', Verbesserung der Performancer(r33476)
  + Verbesserung der tempär Datei Erzeugungszeit auf Windows(r33464)
  + Große Verbesserung der merge Performance (r29969, r32463, r33013, -016, -022, -112)
  + Verbesserung der Datei I/O Performance auf Windows (r33178, -85)
  + Korrigiert: Merging von Dateinamen mit Spaces im Namen  (r33109, -121, -369)
  + Korrigiert: ungültige reltive externals Erweiterung incorrect relative (r33109, -121, -369)
  + Korrigiert: 'svn mv' Hänger und Memory Leack(r33201, -12)
  + Korrigiert: Nachverfolgung in 'svn log -g' (issue #3285)
  + Korrigiert: Aktuellen frühen 'bailout' von 'svn log -g' (r32977)

+ Developer-visible changes:
  + Tests können auch als nicht Admin laufen gelassen werden (Windows Vista) (r31203)
  + Ermöglichung der Compilierung ausserhalb Allow out-of-tree build of bindings on BSD (r32409)
  + Übersetzung der Nachrichten  in svn_fs_util.h (r32771)
  + Korrigiert: Bindings für Perl 5.10 (r31546)
  + Korrigiert: Übersetzung der Bindings der C API Test s mit VS2008 (r32012)
  + Korrigiert: svn_ra_replay API über ra_serf (r33173)

