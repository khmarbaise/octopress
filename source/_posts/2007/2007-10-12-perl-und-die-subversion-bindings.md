---
layout: post
title: "Perl und die Subversion Bindings"
date: 2007-10-12 10:06:24
tags: SKM,Subversion
categories: SKM,Subversion
post-type: blog
---
Ich hatte das Problem, verschiedene Änderungen an einem Repository so zu gestalten, dass lediglich eine neue Revision dabei rauskommt.
Hierbei handelt es sich um verschiedene Kopieroperationen, die innerhalb einer Revision durchgeführt werden mussten.
Wenn man das innerhalb einer Arbeitskopie macht, geht das ohne Probleme. Nur ich wollte das Ganze <b>ohne</b> Arbeitskopie haben.
Eine Ausnahme auf der Kommandzeile bildet die Erzeugung von Verzechnissen per *svn mkdir*. Hierbei können mehrere Verzeichnisse 
innerhalb einer Transaktion (sprich einer Revision) angelegt werden.

{% highlight bash linenos %}
svn mkdir URL/dir1 URL/dir2 URL/dir3 -m"- Create directory structure"
{% endhighlight %}

Im Grunde sollten die folgenden Befehle zu einer Änderung innerhalb einer Revision führen und nicht wie drei.

{% highlight bash linenos %}
svn copy URL/file1 URL/X/file1
svn copy URL/file2 URL/X/file2
svn copy URL/file3 URL/X/file3
{% endhighlight %}
