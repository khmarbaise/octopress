---
layout: post
title: "Java Batch Applikation und Maven 2"
date: 2009-12-11 21:23:00
tags: Java,Neuigkeiten,Maven
categories: [Java,Neuigkeiten,Maven]
post-type: blog
---
Das Problem ist eine Batch-Applikation mit <a href="http://maven.apache.org">Maven 2</a> zu bauen. Mit anderen Worten eine Form zu finden, dass man eine Java Applikation eben <strong>ohne</strong> ein <strong>java -jar xyz.jar</strong> ... ausführen kann sondern sehr einfach per <strong>applicationname</strong>. Es wäre also sinnvoll eine CMD-Datei (Windows) bzw. ein shell script zu verwenden.  Das Problem dabei ist aber, wie kann man solch ein CMD-File bzw. Shell-Script erstellen und vor allem pflegen? Klar kann man einfach eines selber schreiben usw. aber dann muss man das aber testen etc. Also besser per <a href="http://mojo.codehaus.org/appassembler/appassembler-maven-plugin/">maven-appassembler-plugin</a> erstellen und auch pflegen lassen.
