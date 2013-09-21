---
layout: post
title: "Maven: Configuration For Multipe Environments"
date: 2011-07-29 09:20:00
tags: BM,Maven
categories: BM,Maven
post-type: blog
---
I've often heard that it isn't possible to create a number of artifacts out of a single Maven module with different configurations. An example from the wild is to have a web-app (or whatever app) which should be running in development, test, q&amp;a and production environment. So you need different configurations for the different environments for example the database connection or whatever. At first glance that seems to be a contradiction cause Maven's paradigm is "One Module One Artifact"?