---
layout: post
title: "Hudson - 1.256 - Erschienen"
date: 2008-10-25 18:16:23
tags: Neue Versionen,Hudson
categories: Neue Versionen,Hudson
post-type: blog
---
Es ist eine aktualisierte Release der Continous Integration Lösung [Hudson](https://hudson.dev.java.net/) erschienen.
Der [ChangeLog](https://hudson.dev.java.net/changelog.html) gibt genaue Auskunft über die bisherigen Änderungen. 
Die aktuelle Release behebt einige kleinere Probleme:

+ Fälchlicherweise waren zwei dom4j.jar's enthalten, welche zu Problemen mit WebSphere führten (Issue 2435)
+ Korrektur einer NPE im Falle einer fehlerhaften changelog.xml Datei (issue 2428)
+ erbesserte Fehler Erkennung bei der Verwendung von Windows Pfadangaben auf einem Unix Slave(report)
+ Automatisches Abhängigkeits Management von Maven Projekten kann nun deaktiviert werden (Issue 1714)

Zu bekommen ist Hudson im [Download Bereich.](https://hudson.dev.java.net/servlets/ProjectDocumentList?folderID=2761&expandFolder=2761&folderID=0)
