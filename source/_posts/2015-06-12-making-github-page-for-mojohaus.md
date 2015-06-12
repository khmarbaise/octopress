---
layout: post
title: "Making GitHub Page for MojoHaus Plugins"
date: 2015-06-12 08:09
comments: true
categories: [MojoHaus,Github,BM,Maven,Maven-Plugins]
---
The Mojo Codehaus organization has closed their doors. In consequence all
projects had to move to new home. The Mojo Codehaus Maven plugins had to move
as well so after the transition of the code etc. onto
[Github](https://github.com) and the newly created [The
MojoHaus](https://github.com/mojohaus) organization we need to get all the
sites back online which contains the documentation of the plugins.

During the transition the Subversion repositories have been migrated
to [Git repositories](https://github.com/mojohaus).

The original approach to deploy maven sites was to use a WebDAV access to the
Codehaus infrastructure which unfortunately was a little bit slow. So now we
are on Github and can improve those things.

But the first thing is to get back the documentation sites of all the migrated
plugins so the users have a chance to read the documentation. 

So the following things have to be done:

 1. How to regenerate all the plugin sites of the migrated plugins?
 2. How to make site deployment as simple as possible for plugin maintainers?

Unfortunately the first step has to be made manually. So first we need to make a 
clone of the plugin we want to regenerate the site.

```
$ git clone https://github.com/mojohaus/castor-maven-plugin.git
Cloning into 'castor-maven-plugin'...
remote: Counting objects: 1280, done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 1280 (delta 1), reused 0 (delta 0), pack-reused 1274
Receiving objects: 100% (1280/1280), 278.78 KiB | 0 bytes/s, done.
Resolving deltas: 100% (474/474), done.
Checking connectivity... done.
```

You can look which releases have been created:

```
$ git tag
castor-maven-plugin-1.0
castor-maven-plugin-1.5
castor-maven-plugin-2.0
castor-maven-plugin-2.0-alpha1
castor-maven-plugin-2.1
castor-maven-plugin-2.5
```

So to get the latest version of the documentation online we have to checkout 
the state of the latest release which is in this case `castor-maven-plugin-5`.
So next is to generate the site documentation by the appropriate call.

```
$ mvn site
```

This will result in the appropriate documentation in `target/site`. So now it is
best to create the appropriate `gh-pages` branch for taking the content of the site.

```
$ git co --orphan gh-pages
```
Afterwards you have to clean up the folders and remove everything except the `target`
folder and copy the content.

```
$ cp -r target/site/. .
```

