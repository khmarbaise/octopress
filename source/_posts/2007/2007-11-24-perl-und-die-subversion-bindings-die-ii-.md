---
layout: post
title: "Perl und die Subversion Bindings die II."
date: 2007-11-24 19:47:06
tags: SKM,Neuigkeiten,Subversion
categories: SKM,Neuigkeiten,Subversion
post-type: blog
---
Nach dem nun die Änderungen an einem <a href="/blog/2007/10/12/perl-und-die-subversion-bindings.html"  title="Perl Bindings">Repository per Perl-Bindings</a> geklappt haben, wollte ich das Ganze ein wenig erweitern. Zum einen ein Repository per Perl erzeugen und selbstverständlich auch Dateien und Verzeichnisse hinzufügen. 
Die Erzeugung eines Repositories ist recht einfach:

{% highlight perl linenos %}
#!/usr/bin/perl -w
use strict;
use SVN::Core;
use SVN::Repos;
use SVN::Fs;
#
my $config = undef;
my $fs_config = undef;
#
my $repos = SVN::Repos::create("/home/testrepos", undef, undef, $config, $fs_config);
{% endhighlight %}
Damit wird ein Repository erzeugt, was dann für weitere Veränderungen zur Verfügung steht.
