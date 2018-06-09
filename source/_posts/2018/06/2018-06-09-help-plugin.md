---
layout: post
title: "Get the version of your Maven project on command line?"
date: 2018-06-09 17:00
comments: true
categories: [Maven,Maven-Plugins,Usage]
---
I bet you have been faced with the situation to get the version of your Maven
project on command line?  So the question is how to get it? 
I have seen many solutions via using Linux tools like `grep`, `cat` or `awk` etc.
also seen many solutions like using exec-maven-plugin like this:

```
VERSION=$(mvn -q \
  -Dexec.executable="echo" \
  -Dexec.args='${project.version}' \
  --non-recursive \
  org.codehaus.mojo:exec-maven-plugin:1.6.0:exec)
```
Unfortunately the above approach will not work on Windows.

Starting with [Maven Help Plugin Release 3.1.0][mph-3.1.0] this can be done
more easier like the following:
```
mvn org.apache.maven.plugins:maven-help-plugin:3.1.0:evaluate -Dexpression=project.version -q -DforceStdout
```
This will exactly print out the version of your artifact on stdout and nothing else. Also no line feed is 
printed out.

So this can be used easily in scripts like this:
```
VERSION=$(mvn org.apache.maven.plugins:maven-help-plugin:3.1.0:evaluate -Dexpression=project.version -q -DforceStdout)
```
If you have correctly pinned the version of your plugins in your pom file or in a parent pom of
the project this can be simplyfied like this:

```
VERSION=$(mvn help:evaluate -Dexpression=project.version -q -DforceStdout)
```

Apart from extracting the version you can also extract other informations from the pom file 
like the following:

```
GROUPID=$(mvn help:evaluate -Dexpression=project.groupId -q -DforceStdout)
```

More sophisticated expressions like the following are possible too:
```
GROUPID=$(mvn help:evaluate \
  -Dexpression=project.dependencyManagement.dependencies[0].groupId \
  -q -DforceStdout \
  )
```


[mph-3.1.0]: http://blog.soebes.de/blog/2018/06/09/apache-maven-help-plugin-version-3-dot-1-0-released/
