---
layout: post
title: "Tomcat as Daemon"
date: 2010-04-29 09:21:37
tags: Neuigkeiten,CI,Tomcat
categories: Neuigkeiten,CI,Tomcat
post-type: blog
---
I had the problem to start the <a href="http://tomcat.apache.org">Apache Tomcat</a> as a daemon under a different user. After creating an RPM which puts the appropriate files into the correct location i had to create a service script to start, stop and check the status of the Tomcat daemon. The most important thing here is to have a su -l username which will go to the different user in his home folder where i can call the startup.sh or shutdown.sh script. It is necessary to define the JAVA_HOME etc. in the users .bashrc to activate those information during the login.
