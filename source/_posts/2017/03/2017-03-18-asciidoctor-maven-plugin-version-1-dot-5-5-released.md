---
layout: post
title: "Asciidoctor Maven Plugin Version 1.5.5 Released"
date: 2017-03-18 11:28
comments: true
categories: [Neuigkeiten,BM,Maven,Maven-Plugins,Maven-Plugin-Releases]
---
This release aligns the [maven plugin version to the latest version of AsciidoctorJ v1.5.5, and in turn Asciidoctor v1.5.5](https://github.com/asciidoctor/asciidoctor-maven-plugin).

Thanks to all contributors!
Improvements

Upgraded AsciidoctorJ version to 1.5.5, see AsciidoctorJ and Asciidoctor respective release notes for more details
Upgraded JRuby to 1.7.26, note that using AsciidoctorJ-pdf v1.5.0-alpha.14 requires JRuby 9.1.8.0

 * [#270][#270] docinfo files are now excluded by default (@ge0ffrey)
 * [#267][#267] Enabled configuration of sourcemap, catalog_assets and template_cache options
 * [#255][#255] Added compatibility for AsciidoctorJ 1.6.0 extensions (@robertpanzer)
 * [#253][#253], [#251][#251], [#247][#247], [#245][#245], [#243][#243], [#241][#241] Many improvements and fixes in the maven plugin configuration, dependencies and build process (special thanks to @khmarbaise for his patience)
 * [#227][#227] Upgraded Netty and other project dependencies for Java9 compatibility (@Sanne)
 * [#226][#226] Added resource filtering option (choosing which resources to copy to target), see new 'resources' configuration option for details
 * [#218][#218] Improved how AsciidoctorJ is created for v1.6.0 compatibility (@mattadamson)
 * [#223][#223] Added Chinese version of the README (@diguage)
 * [#209][#209] Added support for command line options, see command-line-configuration for details Many, many documentation improvements (@ge0ffrey, @leif81, @dashorst)
 * [#198][#198] Improved behaviour when source directory is not found for multi-module configurations, instead of failing, plugin with now finish and show an informatime message (@Stummi)

Bug fixes

 * [#252][#252] Fixed an issue that disabled source-highlighting
 * [#216][#216] Fixed property name in 'zip' mojo (@ghusta)
 * [#153][#153] Fixed an issue that prevented GitHub urls from being included

Release Meta

Released on: 2017-03-17

Released by: @abelsromero

Soundtrack: Warszawa (Porcupine Tree)

[#153]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/153
[#198]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/198
[#209]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/209
[#216]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/216
[#218]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/218
[#223]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/223
[#226]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/226
[#227]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/227
[#241]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/241
[#243]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/243
[#244]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/244
[#245]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/245
[#247]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/247
[#251]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/251
[#252]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/252
[#253]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/253
[#255]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/255
[#267]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/267
[#270]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/270
[#255]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/255
[#255]: https://github.com/asciidoctor/asciidoctor-maven-plugin/issues/255
