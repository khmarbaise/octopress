---
layout: post
title: "Version Informations Into Your Apps With Maven"
date: 2014-01-02 19:08
comments: true
categories: [Maven, News, Maven-Plugins,Maven Best Practise]
---
It often happens having an application and you want to show a version information in
a kind of ```About Dialog``` or may be on command line as well 
(probably you know ```--version``` stuff).

So in relationship with Maven the question is: How to get this into your Java code.

There are in general four ways to do it:

 1. Using the pom.properties file which is created by default by Maven.

 2. Using the information which is provided by the ```MANIFST.MF``` file.
    There are several ways to get those information.

 3. Create a property which is filtered during the build process and will
    be read by your application.

 4. Using a generated class which contains the appropriate informations.

<!-- more -->

#Using the pom.properties#

In every Maven build a [property pom.properties](http://maven.apache.org/shared/maven-archiver/#class_archive)
is packaged into resulting archive (jar, ear, war, ejb etc.)
which can be found under the following location:

```
META-INF/maven/${groupId}/${artifactId}/pom.properties
```

This file contains the following entries

```
version=${project.version}
groupId=${project.groupId}
artifactId=${project.artifactId}
```

They can be extracted by Java code like the following:


``` java The pom.properties way https://github.com/khmarbaise/version-examples/tree/master/version-example-i/src/main/java/com/soebes/examples/TheVersionClass.java
public class TheVersionClass
{
    ..

    public TheVersionClass()
    {
        InputStream resourceAsStream =
          this.getClass().getResourceAsStream( 
            "/META-INF/maven/com.soebes.examples/version-examples-i/pom.properties" 
          );
        this.prop = new Properties();
        try
        {
            this.prop.load( resourceAsStream );
        }
        ...
    }
}
```
 The disadvantage of [this approach](https://github.com/khmarbaise/version-examples/tree/master/version-example-i) 
 is that you can not simply enhance the entries which are stored in the ```pom.properties``` file. For 
 such a purpose you need to define your own ```pom.properties``` file. 


#The MANIFEST.MF File#

 In Java there exists a possibility to extract information from the ```MANIFEST.MF``` by using simple code lines
 like the following:

``` java "The MANIFEST.MF way" https://github.com/khmarbaise/version-examples/tree/master/version-example-ii/src/main/java/com/soebes/examples/TheVersionClass.java
public class TheVersionClass {
    public TheVersionClass() {
        System.out.println( "  Implementation Title:" + this.getClass().getPackage().getImplementationTitle() );
        System.out.println( " Implementation Vendor:" + this.getClass().getPackage().getImplementationVendor() );
        System.out.println( "Implementation Version:" + this.getClass().getPackage().getImplementationVersion() );
        System.out.println( "    Specification Tile:" + this.getClass().getPackage().getSpecificationTitle() );
        System.out.println( "  Specification Vendor:" + this.getClass().getPackage().getSpecificationVendor() );
        System.out.println( " Specification Version:" + this.getClass().getPackage().getSpecificationVersion() );
    }
}
```

 But unfortunately within a Maven build this will result usually in null output, cause by default
 these information are not written to the ```MANIFEST.MF``` file. This can simply be fixed by 
 using the following pom snippet:

``` xml pom.xml with configuration to create Implementation/Specification entries https://github.com/khmarbaise/version-examples/tree/master/version-example-ii/pom.xml
<build>
  <pluginManagement>
    <plugins>
      <plugin>
        <artifactId>maven-jar-plugin</artifactId>
        <configuration>
          <archive>
            <manifest>
              <addDefaultImplementationEntries>true</addDefaultImplementationEntries>
              <addDefaultSpecificationEntries>true</addDefaultSpecificationEntries>
            </manifest>
          </archive>
        </configuration>
      </plugin>
    </plugins>
  </pluginManagement>
</build>
```

 The main disadvantage of this approach is that you can only use the ```Implementation``` and
 ```Specification``` parts of your ```MANIFEST.MF``` file which might be enough in some situations
 but not in all.

#The Filtered Property File#

Apart from the above methods you can of course define a simple ```version.properties``` 
file within ```src/main/resources``` with any contens you like:


``` text version.properties https://github.com/khmarbaise/version-examples/tree/master/version-example-iii/src/main/resources/version.properties
version=${project.version}
groupId=${project.groupId}
artifactId=${project.artifactId}
``` 

You need to setup filtering in your project like this:
``` xml Filtering version.properties https://github.com/khmarbaise/version-examples/tree/master/version-example-iii/pom.xml
<build>
  <resources>
    <resource>
      <directory>src/main/resources</directory>
      <includes>
        <include>version.properties</include>
      </includes>
      <filtering>true</filtering>
    </resource>
  </resources>
</build>
```

The entries can be extracted by Java code like the following which is more or less exactly the same as before
(except for the path):


``` java The version.properties way https://github.com/khmarbaise/version-examples/tree/master/version-example-iii/src/main/java/com/soebes/examples/TheVersionClass.java
public class TheVersionClass
{
    ..

    public TheVersionClass()
    {
        InputStream resourceAsStream =
          this.getClass().getResourceAsStream( 
            "/version.properties" 
          );
        this.prop = new Properties();
        try
        {
            this.prop.load( resourceAsStream );
        }
        ...
    }
}
```


#The Generated Class#

 You can use the [templating-maven-plugin](http://www.mojohaus.org/templating-maven-plugin/) which
 can be used to create a class which contains the appropriate informations.

 The first step is to create a template file within the following location ```src/main/java-templates``` 
 like the following:

``` java Java Template File https://github.com/khmarbaise/version-examples/tree/master/version-example-iv/src/main/java-templates/com/soebes/examples/Version.java
public final class Version {

    private static final String VERSION = "${project.version}";
    private static final String GROUPID = "${project.groupId}";
    private static final String ARTIFACTID = "${project.artifactId}";
    private static final String REVISION = "${buildNumber}";

    public static String getVersion() {
        return VERSION;
    }
    // other getters...
}
```

 This class can contain any reference to properties or project related information which
 you can access via the ```${project...}``` etc.

 The ```${buildNumber}``` is an example for using other placeholders which in this case
 is filled by the [buildnumber-maven-plugin](http://www.mojohaus.org/buildnumber-maven-plugin/)
 which usually provides the SVN/Git revision number.

 The following pom snippet is used to generate the Java source from the Java template file and
 make sure it will be compiled by the [maven-compiler-plugin](http://maven.apache.org/plugins/maven-compiler-plugin/).

``` xml templating-maven-plugin https://github.com/khmarbaise/version-examples/tree/master/version-example-iv/pom.xml
<plugins>
  <plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>templating-maven-plugin</artifactId>
    <version>1.0.0</version>
    <executions>
      <execution>
        <id>generate-verion-class</id>
        <goals>
          <goal>filter-sources</goal>
        </goals>
      </execution>
    </executions>
  </plugin>
</plugins>
```

 So based on the given information you see there are several ways to get
 the problem solved. It depends you which you decide to use.
 All the above examples can be found on [github repository](https://github.com/khmarbaise/version-examples)
 with running integration tests to show the results.

