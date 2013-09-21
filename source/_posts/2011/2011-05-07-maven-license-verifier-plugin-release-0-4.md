---
layout: post
title: "Maven License Verifier Plugin - Release 0.4"
date: 2011-05-07 21:36:13
tags: Neuigkeiten,Neue Versionen,Maven
categories: Neuigkeiten,Neue Versionen,Maven
post-type: blog
---
Das <a href="http://khmarbaise.github.com/Maven-License-Verifier-Plugin"  title="Maven License Verifier Plugin Site">Maven-License-Verifier Plugin</a> steht nun in der Release 0.4 zur Verfügung. Ein <a href="http://khmarbaise.github.com/mlvp-example/licenseverifierreport.html">Beispiel Report</a> gibt es auch zu sehen. Das Plugin ist nun auch über <a href="http://repo2.maven.org/maven2/com/soebes/maven/plugins/mlv/maven-license-verifier-plugin/0.4/">Maven Central</a> unter den folgenden Koordinaten verfügbar:<br/>
<pre>
&lt;plugin&gt;
  &lt;groupId&gt;com.soebes.maven.plugins.mlv&lt;/groupId&gt;
  &lt;artifactId&gt;maven-license-verifier-plugin&lt;/artifactId&gt;
  &lt;version&gt;0.4&lt;/version&gt;
&lt;/plugin&gt;
</pre>
<p>Die wichtigste Änderung ist nun, dass die licenses.xml Datei nun auch in einem <a href="http://khmarbaise.github.com/Maven-License-Verifier-Plugin/configuration.html">separaten Artefakt abgelegt werden kann</a> und somit die Notwendigkeit entfällt die Licenses.xml Datei immer im Projekt selbst zu haben.</p>
