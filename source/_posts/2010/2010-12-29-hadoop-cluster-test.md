---
layout: post
title: "Hadoop Cluster Test"
date: 2010-12-29 17:52:11
tags: Neuigkeiten,Hadoop
categories: Neuigkeiten,Hadoop
post-type: blog
---
Ich habe mal einfach mal einen kleinen <a href="http://hadoop.apache.org/common/docs/r0.21.0/cluster_setup.html">Hadoop Cluster</a> mit <a href="/index.php?/archives/318-Hadoop-Cluster-Konfiguration.html">3 Knoten aufgesetzt</a> und damit einige Experimente gemacht. Ich habe mir dazu eine 20 <a href="http://de.wikipedia.org/wiki/Bin%C3%A4rpr%C3%A4fix">GiB</a> (19.415.653.321 Bytes) große Log Datei genommen und die per Map/Reduce analysiert. So weit so gut. Die Default Block Size in Hadoop sind 64 <a href="http://de.wikipedia.org/wiki/Bin%C3%A4rpr%C3%A4fix">MiB</a>...Also habe ich mir gedacht ich ändere die Größe einfach mal, um mal zu sehen welche Auswirkungen das hat. Tja und damit hat der Ärger angefangen. Ich habe gesucht und die Größe geändert wie in der <a href="http://hadoop.apache.org/common/docs/r0.21.0/cluster_setup.html">Doku beschrieben</a>.
