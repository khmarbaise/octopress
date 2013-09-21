---
layout: post
title: "Subversion 1.6.6 Release"
date: 2009-10-22 08:08:06
tags: SKM,Neuigkeiten,Neue Versionen,Subversion
categories: SKM,Neuigkeiten,Neue Versionen,Subversion
post-type: blog
---
Die neue Release von Subversion 1.6.6 ist nun da. Die [Release Notes]( http://subversion.tigris.org/svn_1.6_releasenotes.html) geben Auskunft über die 
grundlegenden Neuerungen in der Release 1.6 während der [ChangeLog](http://svn.collab.net/repos/svn/tags/1.6.6/CHANGES) die Änderung in der Release 1.6.6 beschreiben. 
Es wurden wieder einige Bugs behoben.


+ Änderungen für den Benutzer sichtbar:
  + Fixed Absturz während 'svn update' (r39673)
  + Beachte Apache's ServerSignature Anweisung (r40008, -21, -31)
  + Eine Datei mit gemischten Zeilenenden wird nicht hinzugefügt (issue #2713)
  + Unterstützung für Neon 0.29.
  + Fixed Absturz bei 'svn rm --force' (r37953)
  + Behandlung eines Tree-Conflicts mit Ersetzungen(issue #3486)
  + Erlauben von non-threadsafe sqlite wenn APR keine Threads hat (r39301)
  + Ausgabe einer Zeilenumbruch vor dem Plaintext SSL cert / Passwort prompt  (r38982, r39302)
  + Erhöhung der Merge Performance mit implizitem Subtree Mergeinfo (issue #3443)
  + Fixed "libsvn_ra_svn/marshal.c assertion Absturz (opt || cstr)" (issue #3485)
  + Externals für binär Dateien (issue #3368)
  + MIME type Erkennung case-insensitively (issue #3479)
  + Eine nicht vorhandene Revision wird nicht als HEAD interpretiert bei 'svn export' (issue #3400)
  + Rückgängig r36720's default MIME type wieder "text/plain" (issue #3508)
  + Verbesserung der "tree conflict already exists" Fehlermeldung  (r38872)
  + Fixed Problem bei dem committen von Verzeichniss Ersetzungen (issue #3281)
  + Fixed mod_dav_svn Eltern Verzeichnis Links zur Erhalutng der Peg-Revision(issue #3425)

+Änderungen für Entwickler:
  + Fixed zwei Fehlgeschlagene Tests in den Ruby Bindings(r38886)
  + Keine Notwendigkeit von GNU grep für den Build (issue #3453)
  + Verwendung von '$SED' anstatt  'sed' in den Build Skripten (issue #3458)
  + Hinzugefügt svn.client.{log5,merge_peg3} zu den Python Bindings (r39635, -6, -7)
  + Erweiterung des tests.log um die Laufzeit eines Test (r39887)
 
