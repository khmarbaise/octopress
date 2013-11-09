---
layout: post
title: "Why is it bad to activate/deactive modules by profiles in Maven"
date: 2013-11-09 12:50
comments: true
categories: [Maven,Best Practice]
---

Why is the following a bad idea?

{% Modules and profiles lang:xml %}
  <profiles>
          <profile>
                <id>nsis</id>
                <modules>
                        <module>upsilon-node-nsis</module>
                </modules>
        </profile>
        <profile>
                <id>rpm</id>
                <modules>
                        <module>upsilon-node-rpm-generic</module>
                        <module>upsilon-node-rpm-rhel6</module>
                        <module>upsilon-node-rpm-fedora18</module>
                </modules>
        </profile>
  </profiles>
{% endcodeblock %}
