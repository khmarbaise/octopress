---
layout: post
title: "Mojo Maven 2.x Keytool plugin Version 1.5 Released"
date: 2014-05-08 19:14
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
Hi,

The Mojo team is pleased to announce the release of the 
[Maven 2.x Keytool Plugin version 1.5](http://mojo.codehaus.org/keytool-maven-plugin).


A plugin that wraps the keytool program bundled with Oracle's Java SDK. Allows to
manipulate keystores.

To get this update, simply specify the version in your project's plugin
configuration: 

``` xml
<plugin>
  <groupId>org.codehaus.mojo</groupId>
  <artifactId>keytool-maven-plugin</artifactId>
  <version>1.5</version>
</plugin>
```

<!-- more -->

Description
-----------

This Keytool Plugin has the 17 following goals:

 * keytool:changeAlias

  To change an entry alias into a keystore. Implemented as a wrapper around the
  SDK keytool -keyclone (jdk 1.5) or keytool -changealias (jdk 1.6) command. See
  keystore documentation.

 * keytool:changeKeyPassword

  To change the key password of an entry of a keystore. Implemented as a wrapper
  around the SDK keytool -keypasswd command. See keystore documentation.

 * kkeytool:changeStorePassword

  To change the store password of a keystore. Implemented as a wrapper around
  the SDK keytool -storepasswd command. See keystore documentation.

 * keytool:clean

  A Mojo that deletes a generated keystore file.

 * keytool:deleteAlias

  To delete an entry alias from a keystore. Implemented as a wrapper around the
  SDK keytool -delete command. See keystore documentation.

 * keytool:exportCertificate

  To export a certificate from a keystore. Implemented as a wrapper around the
  SDK keytool -export command. See keystore documentation.

 * keytool:generateCertificate

  To generate certificate from a certificate request from a keystore.
  Implemented as a wrapper around the SDK keytool -gencert command. Note This
  operation was not implemented by the keytool before jdk 1.7. See keystore
  documentation.

 * keytool:generateCertificateRequest

  To generate certificate request. Implemented as a wrapper around the SDK
  keytool -certreq command. See keystore documentation.

 * keytool:generateKeyPair

  To generate a key pair into a keystore. Implemented as a wrapper around the
  SDK keytool -genkey (jdk 1.5) keytool -genkeypair (jdk 1.6) command. See
  keystore documentation.

 * keytool:generateSecretKey

  To generate a secret key into a keystore. Implemented as a wrapper around the
  SDK keytool -genseckey command. See keystore documentation.

 * keytool:help

  Display help information on keytool-maven-plugin.
  Call mvn keytool:help -Ddetail=true -Dgoal=<goal-name> to display parameter
  details.

 * keytool:importCertificate

  To import a certificate into a keystore. Implemented as a wrapper around the
  SDK keytool -import (jdk 1.5) or keytool -importcert (jdk 1.6) command. See
  keystore documentation. Since version 1.2, this mojo replace the mojo import.

 * keytool:importKeystore

  To import all entries of a keystore to another keystore. Implemented as a
  wrapper around the SDK keytool -importkeystore command. Note This operation
  was not implemented by the keytool before jdk 1.6. See keystore documentation.

 * keytool:list

  To list entries in a keystore. Implemented as a wrapper around the SDK keytool
  -list (jdk 1.5) command. See keystore documentation.

 * keytool:printCertificate

  To print the content of a certificate. Implemented as a wrapper around the SDK
  keytool -printcert command. See keystore documentation.

 * keytool:printCertificateRequest

  To print the content of a certificate request. Implemented as a wrapper around
  the SDK keytool -printcertreq command. Note This operation was not implemented
  by the keytool before jdk 1.7. See keystore documentation.

 * keytool:printCRLFile

  To print the content of a CRL file. Implemented as a wrapper around the SDK
  keytool -printcrl command. Note This operation was not implemented by the
  keytool before jdk 1.7. See keystore documentation.

JIRA: http://jira.codehaus.org/browse/MKEYTOOL

svn:  https://svn.codehaus.org/mojo/tags/keytool-1.5

The artifacts have been deployed to the mojo repository and will be
mirrored to central.


Release Notes

Bug:

 * {% chjl MKEYTOOL-35 %} - JDK 8 doesn't work

New Feature:

 * {% chjl MKEYTOOL-36 %} - Support JDK 1.8

Enjoy,

The Mojo team.

tony
