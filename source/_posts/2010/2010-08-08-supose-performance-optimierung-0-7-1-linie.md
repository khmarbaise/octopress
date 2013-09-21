---
layout: post
title: "SupoSE - Performance Optimierung - 0.7.1 Linie"
date: 2010-08-08 18:24:52
tags: SKM,Neuigkeiten,Neue Versionen,Test,SupoSE
categories: SKM,Neuigkeiten,Neue Versionen,Test,SupoSE
post-type: blog
---
Die <a href="/index.php?/archives/292-Grosser-Test-mit-SupoSE-die-II..html">Optimierung die ich im Ersten Schritt in SupoSE vorgenommen hatte</a> wahren ja 
schon recht erfolgreich. 

Von 5 Tagen auf unter 24 Stunden ist ja schon was und gleichzeitig noch den Speicherbedarf reduziert. 
Aber das war mir noch nicht genug. Also habe ich nochmal nachgedacht was man da denn noch machen kann. Da das Scannen des Repositories ja anhand 
der Revisionnummern vorgenommen wird war der Schritt in Richtung von Blöcken a 10.000 Revisions nicht so groß aber da ist mir die Idee gekommen, 
da die Blöcke ja faktisch vollständig unabhängig voneinander sind, wäre es ja eigentlich kein Problem auch solche Blöcke parallel zu bearbeiten. 
Tja da war die Idee mit multi threading nicht sehr weit. Gesagt getan. Eine erste einfache Implementierung war nicht so aufwendig. Aber das Ergebnis war 
schlicht und ergreifend entäuschend. Etwas unter 24 Stunden. Nachdem ich das Ganze dann nochmal genau unter die Lupe genommen hatte, habe ich den 
Übeltäter gefunden. Ich hatte vergessen eine Klasse für jeden Thread neu zu instanzieren. Damit hatte ich mir indirekt eine Synchronisation eingebaut. 
Nachdem dass angepasst war, war das Ergebnis sehr befriedigend. Anstatt 24 Stunden was das Ganze jetz in ca. 9 Stunden. Das heißt eine Reduzierung um 
ca. 2/3 (Na ja nicht so genau nach rechnen ;-)).
Wichtig dabei ist, dass der Rechner (Intel Core i7 mit 12 GB RAM) dabei recht gut Ausgelastet war (siehe Bild). Mit top (Unix Rechner) war auch recht 
gut zu beobachten, dass die Last auf verschiedene Kerne verteilt wurde. Nachteilig ist selbstverstänglich, dass hier während des Laufes mehr 
speicher benötigt wird.
![Load Tag](/files//supose-multithread-load-day.png)
![Speicher](/files/supose-multithread-memory-day.png)
