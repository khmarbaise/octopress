---
layout: post
title: "Versuchsweise Migration Subversion nach GIT"
date: 2008-03-27 00:03:49
tags: SKM,Subversion,GIT
categories: SKM,Subversion,GIT
post-type: blog
---
Tja, ich habe mir mal gedacht ich schaue mir mal **git** an. Das Problem dabei ist, dass ich alles mit Subversion mache und somit alles in Subversion 
Repositories vorliegen habe. Also muss ich zuerst einmal eine 
[Migration](http://wincent.com/knowledge-base/Migrating_Subversion_repositories_to_Git "Migration") durchführen. 
Das mache ich gerade von einen SVN-Repository (ca. 2.6 [GiBi](http://de.wikipedia.org/wiki/Bin%C3%A4rpr%C3%A4fix "GiBi") und mit 11688 revisions). 

+ Gestartet habe ich die Konvertierung am Mittwoch (12:00 Uhr) und jetzt ist es Donnerstag ca. 0:00 Uhr...das braucht also bis dato 12 Stunden....mal schauen wann die Konvertierung endlich fertig 
ist....kommt mir persönlich einfach zu viel vor...
+ Also in der Zwischenzeit ist es Donnerstag 12:15 Uhr und die Migration läuft immer noch.. es sind über 24 Stunden....
+ Also jetzt ist es Donnerstag 14:00 Uhr und ich breche die Konvertierung ab....

+ Es ist Freitag. Ein neuer Tag und neuer Mut zur Konvertiertung. Jezt habe ich mich dazu durchgerungen nochmal eine Konvertierung zu versuchen. Dazu habe ich zuerst einmal eine neue Version von git eingespiel (1.5.4.5), vorher hatte ich 1.5.2.?...Ok.
+ Das Ganze also nochmal von Vorne. Gestartet am Freitag 12:00 Uhr und Heute am Samstag 13:00 Uhr läuft das immer noch. Aber im Unterschied zu vorher ist die Konvertierung deutlich weiter fortgeschritten. Derzeit sehe ich die Revision 10945 die konvertiert wurde...mal sehen wie sich das entwickelt.
+ So jetzt ist es Samstag 17:25 Uhr und die Konvertierung bearbeitet gerade einen Build-Tag (11045). Das kann ja noch ein wenig dauern....
+ So es ist jetz ca. 18:30 und jetzt ist die Konvertierung bei Build-Tag (11062)...Hm. Das bedeutet, dass die Konvertierung von ca. 20 Revision über eine Stunde benötigt hat....
+ So jetzt habe ich es einfach satt...19:25...und immer noch nicht fertig...Jetzt ist schluss mit der Migration.
