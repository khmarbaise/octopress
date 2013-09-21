---
layout: post
title: "Geänderten Text in Subversion filtern"
date: 2010-04-29 11:07:08
tags: SKM,Neuigkeiten,Subversion
categories: SKM,Neuigkeiten,Subversion
post-type: blog
---
Ich hatte ein kleines Problem und wollte in einem Subversion Repository rausfinden, in welcher Version ein Änderung vorliegt. Also habe ich mir 
Kurzerhand folgendes Script geschrieben (check.sh)

{% highlight bash linenos %}
#!/bin/bash
REVISIONS=`svn log pom.xml -q|grep "^r" | cut -d"r" -f2 | cut -d" " -f1`
for rev in $REVISIONS; do
    svn blame -r$rev:$rev pom.xml | tr -s " " | grep -v "\ \-\ \- "
done
{% endhighlight %}

Wenn man dann die Ausgabe des Scriptes filtert:

{% highlight bash linenos %}
check.sh | grep "Text"
{% endhighlight %}

Die Ausgabe sieht ungefährt wie folgt aus:

{% highlight bash %}
1345 asdfasdfasdf
{% endhighlight %}
Die 1345 ist die Revision Nummber in der die Änderung ("Text") gemacht wurde.

Das Problem bei dem Script ist, dass es sehr gut funktioniert, aber sobalt das Repository bzw. die Anzahl der Revisions die durchsucht werden 
müssen größer wird, dauert es etwas. Besser wäre da die Nutzung von <a href="http://www.supose.org">SupoSE</a>.
<br/>
<br/><strong>Update:</strong>Es gibt leider ein kleines Problem, dass bei der obigen Methode nur der geänderte Text gefunden werden kann aber 
kein Text, der gelöscht wurde.
