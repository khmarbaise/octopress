---
layout: post
title: "Hibernate Annotations: Eigene Sequenzen pro Klasse bei Vererbung"
date: 2008-07-11 20:35:15
tags: Java,Unit Tests,Test
categories: Java,Unit Tests,Test
post-type: blog
---
Bei der Arbeit mit <a href="http://www.hibernate.org"  title="Hibernate">Hibernate</a> tritt häufiger das Problem auf, 
dass man bei vererbten Klassen pro Tabelle eine eigene Sequence (z.B. in Oracle) verwenden möchte bzw. muß.
Man kann selbstverständlich die Id in jede Klasse packen und dort dann die entsprechenden Annotierungen anbringen. 
Das ist aber schlicht und ergreifend lässtig und wiederspricht dem OO Prinzip. Wenn man nun konsequent mit 
Vererbung arbeitet, ergibt es sich, dass meist eine Basis-Klasse entsteht und dort das Id Attribut enthalten ist.

{% highlight java linenos %}
public class Base {
    private Long Id;

    public Long getId() {...}
     ....
}

public class DerivedA extends Base {
    private String name;
    public String getName() { .... };
}

public class DerivedB extends Base {
    private String position;
    public String getPosition() { .... };
}
{% endhighlight %}

Mit Hibernate möchte man selbstverständlich an der Geschichte nichts ändern, außer den Annotationen die für Hibernate wichtig sind.

{% highlight java linenos %}
@MappedSuperclass
public class Base {
    private Long Id;

    @Id
    @GeneratedValue(generator = "hibseq")
    public Long getId() {...}
     ....
}

@Entity
@Table(name = TableNames.TABLEA)
@GenericGenerator(
  name = "hibseq",
  strategy = "sequence",
  parameters = {@Parameter(name="sequence", value="SEQ_" + TableNames.TABLEA)}
)
public class DerivedA extends Base {
    private String name;
    public String getName() { .... };
}

@Entity
@Table(name = TableNames.TABLEB)
@GenericGenerator(
  name = "hibseq",
  strategy = "sequence",
  parameters = {@Parameter(name="sequence", value="SEQ_" + TableNames.TABLEB)}
)
public class DerivedB extends Base {
    private String position;
    public String getPosition() { .... };
}
{% endhighlight %}

Das Maven 2 PlugIn für Hibernate erzeugt dann aus den og. Klassen einen entsprechenden SQL (DDL) File:
{% highlight xml linenos %}
<plugins>
  <plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>hibernate3-maven-plugin</artifactId>
    <version>2.0-SNAPSHOT</version>
    <executions>
      <execution>
        <phase>process-classes</phase>
        <goals>
          <goal>hbm2ddl</goal>
        </goals>
      </execution>
    </executions>

    <configuration>
      <componentProperties>
        <jdk5>true</jdk5>
        <packagename>com.soebes.hibernate.example</packagename>
        <console>true</console>
        <outputfilename>schema.sql</outputfilename>
        <drop>true</drop>
        <create>true</create>
        <update>false</update>
        <export>false</export>
        <format>true</format>
      </componentProperties>
    </configuration>
  </plugin>
<plugins>
{% endhighlight %}
