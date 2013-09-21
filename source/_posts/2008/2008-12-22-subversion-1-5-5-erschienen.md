---
layout: post
title: "Subversion 1.5.5 - Erschienen"
date: 2008-12-22 22:34:00
tags: SKM,Neuigkeiten,Neue Versionen,Subversion
categories: SKM,Neuigkeiten,Neue Versionen,Subversion
post-type: blog
---
Das <a href="http://subversion.tigris.org/">Subversion Team</a> hat <a href="http://subversion.tigris.org/servlets/NewsItemView?newsItemID=2223">bekannt gegeben</a>, 
dass nun die <a href="http://svn.collab.net/repos/svn/tags/1.5.5/CHANGES">Release 1.5.5</a> von Subversion zur Verfügung steht. 

+ Änderungen, die für den Anwender sichtbar sind:
   + Der commit wird nun ermöglicht wenn Properties geändert wurden, aber veränderte Unterverzeichnisse existieren (r34487, -92, -94)
   + Cyrus Authentifizierung bevorzugt nun immer EXTERNAL vor ANONYMOUS (r33866)
   + Erzeuge keine Mergeinfo's für verschieben/kopieren innerhalb einer Arbeitskopie  (r34184, -585)
   + Kein automatisches Upgrade von alten Berkeley DB Dateisystem auf 1.5 oder 1.4 Format (r34653, -6)
   + Rückgabe von Mergeinfos des vorherigen Zustandes während eines reverse Merges(r30257, r33024, -6)
   + Entfernung von Merginfo die durch merge gelöscht wurde (ssue #3323)
   + Ermögliche den Proxy Slave's das Durchkommen der txn GET und PROPFIND Requests (issue #3275)
   + Merge kann nun Zielen mit inkonsitenten Zeilenumbrüchen verwenden (issue #3262)
   + Unterbindung von leeren ChangeListen (issue #3344)
   + Entfernung von falschen positiven ra_neon Merginfo Fehlern (r34822)
   + Erhöhung der Performance von 'svn merge --reintegrate' (r34091, -4, and others)
   + Korrektur: Fremde Merges erhalten UUID des fremden Repositories (r34050, -1, -3)
   + Korrektur: Verwendung von korrekt kodierten diff-Headers in der Konflikt Auflösung(r34171)
   + Korrektur: Segmentation Fault in 'svn cp --parents' (r31311, -4)
   + Korrektur: Mergeinfos für leere Revision Bereichsangabe  (issue #3312)
   + Korrektur: Segmentation Fault in BDB Backend für Node-Origins Cache (r34506)
   + Korrektur: Fehlerhafter Merge wenn die Zielhistorie wiederherstellungen erhält(r34385, -93)
   + Korrektor: Ungültige Mergeinformationen die bei einem Mergevorgang von einem Unterbaum erzeugt wurden (r34560, -2)

+ Änderungen für Entwickler:
   + Korrektur: svn_repos_get_logs() Fehler bei verschiedenen Revision Parametern.(r33873, -4)
