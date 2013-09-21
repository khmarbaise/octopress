---
layout: post
title: "Ruby on Rails mit Apache / Mongrels Cluster "
date: 2009-04-03 12:49:00
tags: Neuigkeiten,Redmine
categories: Neuigkeiten,Redmine
post-type: blog
---
Tja, nachdem ich nun beobachtet habe, wie es zu häufigeren Ausssetzern kommen, habe ich mich nun entschieden die Kombination Apache / Mongrels 
Cluster durch etwas anderes zu ersetzten. Es ist nämlich häufiger zu beobachten (siehe bild), dass sich der Load des Servers in schlagartig 
erhöht. Ich habe die Anzahl der Mongrels Knoten schon von zwei auf fünf erhöht, da ich vermutete, dass es notwendig ist 
mehr Knoten zur Verfügung zu stellen.

![Load](/files/load.png)

![Load am 18.02.2009](/files/load20090218.png)
Tja wie es aussieht hat die Erhöhung der Knoten nicht wirklich geholfen. Das hat jetzt einen Load Wert von max. 15.8 auf der Maschine erzeugt.
Jetzt ist es tatsächlich Zeit etwas andere zu installieren.

![Load am 03.04.2009](/files/redmine-load-20090403.png)
**Update** Also die Geschichte wird nicht besser....
