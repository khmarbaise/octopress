---
layout: post
title: "Installation Redmine"
date: 2008-10-21 20:56:10
tags: Neuigkeiten,Redmine
categories: Neuigkeiten,Redmine
post-type: blog
---
Ich habe die Schritte zur Installation von [Redmine](http://www.redmine.org) einmal aufgeführt, damit man sieht wie einfach es ist Redmine zu installieren. 
Ich habe mich dafür entschieden Redmine auf einer MySQL zu betreiben.

+ Installation MySQL 5.0
+ Installation Ruby (1.8.6)
+ Donwload [gems (1.3.0)](http://rubyforge.org/frs/?group_id=126&release_id=26453); Danach ein einfaches <pre>ruby ./setup.rb</pre>
+ gem install rails -v 2.1.1 (Hier muss -v 2.0.1 angegeben werden, wenn mit der 0.7.3 Release gearbeitet werden soll)
+ [Auschecken einer Entwicklungsversion](http://www.redmine.org/wiki/redmine/CheckingoutRedmine) per <pre>svn checkout http://redmine.rubyforge.org/svn/trunk</pre>
+ Installation der DB laut [Anleitung von Redmine](http://www.redmine.org/wiki/redmine/RedmineInstall)<pre>create database redmine character set utf8;</pre>
+ Wechsel in das vorher ausgecheckte Verzeichnis; Initialisierung der Datenbank.<pre>rake db:migrate RAILS_ENV="production"</pre>
+ Default Konfiguration einspielen<pre>rake redmine:load_default_data RAILS_ENV="production"</pre>
+ Start via <pre>ruby script/server -p 80 production</pre>

Das wars....
