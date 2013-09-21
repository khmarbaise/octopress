---
layout: post
title: "Tomcat und Applikationen die unter Root erreichbar sind"
date: 2010-01-13 16:43:40
tags: Java,Neuigkeiten
categories: Java,Neuigkeiten
post-type: blog
---
Tja das Problem ist einfach, dass ich einige Web-Applikationen im Tomcat deployen muss. Das etwas störende dabei ist, dass alle Web-Applikationen einen Context Pfad sezten. Mit anderen Worten sind dann Applikationen unter http://url/WebAppName zu erreichen. Das hat mich ein wenig gestört. Die Lösung ist recht einfach. Nach einigem experimentieren und <a href="http://www.coderanch.com/t/87915/Tomcat/tomcat-define-context-root-name#470683">viel lesen</a> habe ich rausgefunden, dass der einfachste Weg darin besteht die Tomcat Distribution zu nehmen und im webapps Ordner alles zu löschen und die jeweilige Web-Applikation also ROOT.war in den webapps Ordner abzulegen. Dann funktioniert es wie gewünscht und der Aufruf http://url funktioniert.
