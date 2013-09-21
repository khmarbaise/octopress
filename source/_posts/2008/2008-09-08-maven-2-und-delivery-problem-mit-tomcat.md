---
layout: post
title: "Maven 2 und Delivery Problem mit Tomcat"
date: 2008-09-08 21:12:24
tags: BM,Maven
categories: BM,Maven
post-type: blog
---
Mein Problem war, eine Lieferung in Form einer oder mehrerer Dateien aus einem Maven 2 getriebenen Projekt zu erstellen, dass eine Web-Applikation bzw. genauer gesagt ein Web-Service darstellt.<br/>
<br/>
Mein erste Idee war, einfach ein Script zu schreiben, dass den lokal liegenden Tomcat auspackt und dort hinein den WAR-File entsprechend ablegt und das Ganze dann hoch fährt. Dabei muss man beachten, dass die Konfigurationsdateien des Tomcat enventuell noch anzupassen sind. <br/>
<br/>
Nach einer Weile der Überlegung und einem <a href="http://www.nabble.com/Re%3A-Creating-Delivery-Package-p19369368.html">Tipp aus der Maven-User-Mailing Liste (vielen Dank nochmal dafür)</a>, habe ich dann einfach den Ansatz verfolgt, die Abhängigkeiten des Tomcat per dependency in einer POM zu definieren und daraus ein zip/tar.gz zu bauen. Wenn man dann noch die restlichen Konfigurationsdateien mitnimmt, dann kann man sehr einfach einen <a href="http://docs.codehaus.org/display/MAVENUSER/Delivery+with+Tomcat">Tomcat mit integrierter Applikation</a> zusammenstellen.<br/>
<br/>
Dann ist die Installation auf einem Zielsystem zu einem unzip und einem Wechsel in das bin-Verzeichnis und einem "startup.bat" degradiert worden.<br/>
Derzeit scheint es nur für die Version 6.0.13 bis 6.0.18 des Tomcat entsprechende Abhängigkeiten in einem Maven Repository zu geben. Für einen Tomcat z.B. 5.5. habe ich bisher kein Maven Repository gefunden, welches die entsprechenden Abhängigkeiten enthält.<br/>.
