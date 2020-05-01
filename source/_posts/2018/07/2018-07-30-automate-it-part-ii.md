---
layout: post
title: "Automate it - Be Lazy - Part II"
date: 2018-07-30 20:02:11
comments: true
categories: [Maven,Automation,DevOps,Programming]
---
As I wrote in my [previous post about automation][part-i] I would continue 
my post. So here it is.

The following parts are left from my process:

The process
-----------
1. Create an issue for myself (if already existing move to step 2)
2. Create a branch within the appropriate project based on the issue 
3. Assign the issue to myself
4. Migrate the issue into the state of `IN PROGRESS`
5. Done.
6. Done.
7. Done.
8. Done.
9. Close the appropriate jira issue with a reference to the
   commit in comment.


If I work on updates of dependencies or parents in our builds, it is
required to make a JIRA ticket for each of those updates (ok not really
required but it is useful). It makes sense to test each of those updates
separately in Jenkins. In the end it is an important information for the
end-users, so they can see what [has been changed][example-release].


<!-- more -->

Automation Step 4
-----------------
The first step is to create a ticket with some information like
a summary, a description and giving `Affected versions` and `Fix Version/s` 
useful values. This is only needed if we do not have a ticket yet for the
work.

So far I was going into my browser opened the [appropriate project][create-issue] and
pressed the `Create` button and typed in the appopriate values. I already
mastered the copy and paste parts from browser url to command line etc.
After some time, I thought about this and came to the conclusion, there must be a more convenient way.

I tried to use the REST API of JIRA with some JavaScript which I used earlier
to create some [release notes][release-notes] but it was too complex to handle
that via JavaScript. After some research, I found a [command line client][jira-cli]
which looks promising.

I started to play around with the [command line client][jira-cli-downloads].
There are some things to mention about it:

1. Single binary artifact; simply download it and put on the path. 
   Name it as you like (I decided to name it `jira-cli`)
2. Templating mechanism to create custom commands
3. Simple and powerful default commands already existing
4. Easy configuration via [yaml][yaml] file.

The first thing is, you need to login into the JIRA instance  
which can be handled by the following:
```
$ jira-cli login --endpoint=https://issues.apache.org/jira
```
You will be prompted for your password. The user which is used to login is derived
by the user you are working with. For me [it was wrong][jira-user-login]. So I needed to
add a parameter:
```
$ jira-cli login --endpoint=https://issues.apache.org/jira --user=khmarbaise
```
So now I can view a ticket on command line very easy:
```
$ jira-cli view MEJB-118
issue: MEJB-118
created: 339 days ago
status: Closed
summary: Remove "J2EE" from plugin description and site
project: MEJB
issuetype: Task
assignee: khmarbaise
reporter: afloom
fixVersions: 3.0.1
priority: Trivial
votes: 0
description: |
  The term "J2EE" was repalced by "Java EE" by Sun/oracle logn time ago and we shouldn't use "J2EE". It's currently used at least in the plugin's description (pom.xml) and on the intro page of the plugin's site.
  Replace "J2EE Enterprise Javabean (EJB)" with "Java Enterprise JavaBean (EJB)".

comments:
  - | # khmarbaise, 338 days ago
    Done in [r1805332|https://svn.apache.org/r1805332]
  - | # hudson, 338 days ago
    SUCCESS: Integrated in Jenkins build maven-plugins #9069 (See [https://builds.apache.org/job/maven-plugins/9069/])
    [MEJB-118] Remove "J2EE" from plugin description and site (khmarbaise: [http://svn.apache.org/viewvc/?view=rev&rev=1805332])
    * (edit) maven-ejb-plugin/pom.xml
    * (edit) maven-ejb-plugin/src/site/apt/index.apt.vm
```
Just to take a short look on a particular issue it is much faster than going via the browser.

After more detailed reading the documentation I found that I can put the information
about the end point and the user which should be used for jira into a configuration file
(within your home directory) `.jira.d/config.yml` which looks like this:
```
endpoint: https://issues.apache.org/jira/
user: khmarbaise
login: khmarbaise
```
With this the login command can be reduced to `jira-cli login`. Easy? The
`jira-cli` will safe session information in `.jira.d/` directory which is
stored in `cookies.js` file. For my convenience I have created a Git repository
in `.jira.d` and added `cookies.js` to the `.gitignores` file to prevent me to
commit the `cookies.js` file accidently.

Now I have the ability to create JIRA tickets via command line.

So far so good. But how do I know for which project I need to create a ticket?

But wait a second. The `pom.xml` contains the information 
`project.issueManagement.url` which is the URL for the JIRA tracker. So I
needed to find a way to extract it from the `pom.xml`.

Luckily the [maven-help-plugin][help-plugin] is here the way to go which looks like this
(Just for brevity I have added `\`; usually this is a single line):
```
ISSUE_URL=$(mvn org.apache.maven.plugins:maven-help-plugin:3.1.0:evaluate \
  -Dexpression=project.issueManagement.url \
  -q \
  -DforceStdout)
```
This will extract the URL for JIRA out of the pom file. So you get something
like this:

```
https://issues.apache.org/jira/browse/MDEPLOY
```
but unfortunately this is not the project you need for `jira-cli`. What I need
is the `MDEPLOY`. This can easily achieved by:
```
PROJECT=$(basename $ISSUE_URL)
```
These are the information which are needed to create a JIRA ticket.
Hm...really? No. What about the version for `Fixed versions/s` and `Affected
versions` ?

This can be done by:
```
PLAIN_VERSION=$(mvn build-helper:parse-version \
  -Dx=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.incrementalVersion} \
  org.apache.maven.plugins:maven-help-plugin:3.1.0:evaluate \
  -Dexpression=x \
  -q \
  -DforceStdout)
```
This will extract the version out of the pom file without the trailing
`-SNAPSHOT`. It assumes that the version number has three digits.

So now comes a favorite feature of `jira-cli`. You can create your [own commands][custom-commands]
very easy. You simply define things like this in your `config.yml` file:
```
custom-commands:
  - name: mine
    help: display issues assigned to me
    script: |-
      {{jira}} list --template table --query "resolution = unresolved and assignee=currentuser() ORDER BY priority asc, created"
```
So now you can simply call `jira-cli` like this:
```
jira-cli mine
```
and you will see the list of issues which are assigned to yourself. See more details in the
documentation of `jira-cli`. Based on the above, I have created a custom command which looks like this:

```
custom-commands:
  - name: createdependencyupgrade
    help: creates an Dependency Upgrade ticket.
    options:
      - name: affected
        help: The affected version
      - name: fix
        help: The fix versions.
      - name: project
        default: $JIRA_PROJECT
      - name: description
        default: ""
      - name: priority
        default: "Minor"
    args:
      - name: summary
        required: true
    script: |-
      {{jira}} create --project={{options.project}} --issuetype="Dependency upgrade" -o summary="{{args.summary}}" -o description="{{options.description}}" -o fixVersions="{{options.fix}}" -o versions="{{options.affected}}" -o priority="{{options.priority}}" --noedit
```
So as the result of this, I can create a JIRA ticket via this:

```
jira-cli createdependencyupgrade --project MWAR --fix="3.0.2" --affected="3.0.2" "Summary Text"
```
These have been the prerequisite to finally create a JIRA ticket in a very convenient way.
The result of previous things and integrating some other parts is now my
[createdependencyupgradeissue.sh][createdependencyupgradeissue] script which I can simply call like this:
```
$ createdependencyupgradeissue.sh "Upgrade maven-plugins parent to version 32"
```
The output of that script looks at the moment like this:
```
$ createdependencyupgradeissue.sh "Upgrade maven-plugins parent to version 32"
Checking if we are on a branch...done.
Check that we are on master...done.
Extracting issue url from pom.xml file...done.
Extracting version from pom.xml file...done.
Creating JIRA issue...done.
OK MWAR-419 https://issues.apache.org/jira/browse/MWAR-419
M    pom.xml
Switched to a new branch 'MWAR-419'
```
As you might already have realized, I have added things to create a branch in Git
based on the JIRA issue name and switched to that branch.

The fourth step of automation accomplished which means more improvement
but not enough.

Automation Step 5
-----------------

If I like to assign a ticket to myself so far I had to go to the
ticket page and click on `assign to me` link which prerequisites
to know the issue number and type in the correct URL etc. 

So based on my assumptions that the branch name is the 
JIRA issue number the only thing I need to do, is to extract
the number from the branch. This can simply be achieved by:
```
BRANCH=$(git symbolic-ref --short HEAD)
```
So next the thing is to assign the ticket to myself. This
can be done with `jira-cli` easily like this:
```
jira-cli take $BRANCH
```
I have to add some sanity checks in case of errors and the result is 
the [takeissue.sh][takeissue] script which I can use within the branch like this:

```
takeissue.sh
```

The fifth step of automation is accomplished which means becoming
comfortable but I think, we could do more.

Automation Step 6
-----------------
This step is more or less identical to the previous one cause I would
like to change the state of an issue into `IN PROGRESS`.
This can easily be achieved by using `jira-cli` like this:
```
$ jira-cli start MDEP-234
```
Based on the ideas before, this can be baked into 
a script [startissue.sh][startonissue] which results in such a simple call
```
startissue.sh
```

The sixth step of automation accomplished which means more improvement
is possible.

Automation Step 7
-----------------
Ok I can create an issue in JIRA including the creation of the branch 
in Git so what about to commit here? Usually I update files or add some new
ones which is done by `git add .` and afterwards I can commit the state.

So based on the issue the commit message should look like this:
```
[XXX-123] - Summary 
Optional description
```
In the majority of the cases I need only the first line. In other
words this is copy and paste from the issue I created before. 
Let us make that easier. I created, of course you know already a script 
[commitonissue.sh][commitonissue] which exactly does that.

It identifies the branch based on the name of the branch in Git
and gets the information about the summary via `jira-cli` from
JIRA which results in such line:
```
SUMMARY=$(jira-cli view $BRANCH | grep "^summary: " | cut -d " " -f2-)
```
and finally I need to do the real commit which can be handled by 
this:
```
git commit -a -m"[$BRANCH] - $SUMMARY"
```

The seventh step of automation accomplished which means we are on the
home straight. But not yet crossed the line.

Automation Step 8
-----------------
This step is nothing really new, it is just improving something already existing. 
The [gitmergeclean][gitmergeandclean] script of the first post. This is needed to be
tweaked. It should also close the JIRA ticket after the branch has been merged to master
with an appropriate comment on it.

I have added the following lines to the script to handle this.

```
#
# Get the latest commit HASH
#
COMMITHASH=$(git rev-parse HEAD)
#
# Get the GIT URL from pom file:
# TODO: Can we do some sanity checks? Yes: scm:git:..  if not FAIL!
echo -n "Get the git url from pom file..."
GITURL=$(mvn help:evaluate -Dexpression=project.scm.connection -q -DforceStdout | cut -d":" -f3-)
echo " URL: $GITURL"
GITPROJECT=$(basename $GITURL)
GITBASE=$(dirname $GITURL)
#
echo "Closing JIRA issue $BRANCH"
jira-cli close -m"Done in [$COMMITHASH|$GITBASE?p=$GITPROJECT;a=commitdiff;h=$COMMITHASH]" --resolution=Done $BRANCH
## Error handling?
echo "Closing finished."
```
The `BRANCH` information is already extracted at the [beginning of the script][beginning].
The final lines of the script are to call `jira-cli` to close the issue
with an appropriate comment and set the `resolution` to a useful value. In our case it is simply `Done`. 
The `GITURL` etc. is extacted to create a useful comment which contains a link to the
real git repository with showing the diff of the commit which has been made.
You can take a look at the [MCLEAN-87][mclean-87] issue which shows a link to the git repository.

A full output of the new [gitmergeandclean][new-gitmergeandclean] script looks like this:
```
~/ws-git-maven/plugins/maven-rar-plugin (MRAR-79)$ gitmergeandclean.sh
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
Updating 1ffdfba..055bbda
Fast-forward
 pom.xml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
Total 0 (delta 0), reused 0 (delta 0)
remote: Sending notification emails to: ['"commits@maven.apache.org" <commits@maven.apache.org>']
remote: To git@github:apache/maven-rar-plugin.git
remote:    1ffdfba..055bbda  055bbda0907661aa6515cc8e79ba66cee43aec12 -> master
remote: Syncing refs/heads/master...
To https://gitbox.apache.org/repos/asf/maven-rar-plugin.git
   1ffdfba..055bbda  master -> master
remote: Sending notification emails to: ['"commits@maven.apache.org" <commits@maven.apache.org>']
remote: To git@github:apache/maven-rar-plugin.git
remote:  - [deleted]         MRAR-79
remote: Syncing refs/heads/MRAR-79 (FORCED)...
To https://gitbox.apache.org/repos/asf/maven-rar-plugin.git
 - [deleted]         MRAR-79
Deleted branch MRAR-79 (was 055bbda).
Get the git url from pom file... URL: https://gitbox.apache.org/repos/asf/maven-rar-plugin.git
Closing JIRA issue MRAR-79
OK MRAR-79 https://issues.apache.org/jira/browse/MRAR-79
Closing finished.
```

Conclusion
----------
So finally for a dependency upgrade the process looks like this:

1. Change the appropriate information in `pom.xml` file
2. `createdependencyupgradeissue.sh "Upgrade maven-plugins parent to version 32"`
3. `commitonissue.sh`
4. `gitpushwithlease.sh`
5. `takeissue.sh`
6. `startissue.sh`
   After that I have to wait for the result of Jenkins. If the build is successful I can merge back
to master otherwise I need to find the cause of the problem. In this case
the result was successful so I can do it like this: 
8. `gitmergeandclean.sh`

The output looks in total like this:
```
~/ws-git-maven/plugins/maven-linkcheck-plugin (master *)$ createdependencyupgradeissue.sh "Upgrade maven-plugins parent to version 32"
Checking if we are on a branch...done.
Check that we are on master...done.
Extracting issue url from pom.xml file...done.
Extracting version from pom.xml file...done.
Creating JIRA issue...done.
OK MLINKCHECK-32 https://issues.apache.org/jira/browse/MLINKCHECK-32
M    pom.xml
Switched to a new branch 'MLINKCHECK-32'
~/ws-git-maven/plugins/maven-linkcheck-plugin (MLINKCHECK-32 *)$ commitonissue.sh
[MLINKCHECK-32 cd34b97] [MLINKCHECK-32] - Upgrade maven-plugins parent to version 32
 1 file changed, 1 insertion(+), 1 deletion(-)
~/ws-git-maven/plugins/maven-linkcheck-plugin (MLINKCHECK-32)$ gitpushwithlease.sh
Counting objects: 3, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 1.53 KiB | 1.53 MiB/s, done.
Total 3 (delta 2), reused 0 (delta 0)
remote: Sending notification emails to: ['"commits@maven.apache.org" <commits@maven.apache.org>']
remote: To git@github:apache/maven-linkcheck-plugin.git
remote:  * [new branch]      cd34b97ddb661d5881bf7fc01e3291a9b0f67041 -> MLINKCHECK-32
remote: Syncing refs/heads/MLINKCHECK-32...
To https://gitbox.apache.org/repos/asf/maven-linkcheck-plugin.git
 * [new branch]      MLINKCHECK-32 -> MLINKCHECK-32
~/ws-git-maven/plugins/maven-linkcheck-plugin (MLINKCHECK-32)$ takeissue.sh
~/ws-git-maven/plugins/maven-linkcheck-plugin (MLINKCHECK-32)$ startissue.sh
```
Here is the time where I have to wait for the results of Jenkins. So in this
case the result was successful so I can continue like this:
```
~/ws-git-maven/plugins/maven-linkcheck-plugin (MLINKCHECK-32)$ gitmergeandclean.sh
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
Updating ff5dfab..cd34b97
Fast-forward
 pom.xml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
Total 0 (delta 0), reused 0 (delta 0)
remote: Sending notification emails to: ['"commits@maven.apache.org" <commits@maven.apache.org>']
remote: To git@github:apache/maven-linkcheck-plugin.git
remote:    ff5dfab..cd34b97  cd34b97ddb661d5881bf7fc01e3291a9b0f67041 -> master
remote: Syncing refs/heads/master...
To https://gitbox.apache.org/repos/asf/maven-linkcheck-plugin.git
   ff5dfab..cd34b97  master -> master
remote: Sending notification emails to: ['"commits@maven.apache.org" <commits@maven.apache.org>']
remote: To git@github:apache/maven-linkcheck-plugin.git
remote:  - [deleted]         MLINKCHECK-32
remote: Syncing refs/heads/MLINKCHECK-32 (FORCED)...
To https://gitbox.apache.org/repos/asf/maven-linkcheck-plugin.git
 - [deleted]         MLINKCHECK-32
Deleted branch MLINKCHECK-32 (was cd34b97).
Get the git url from pom file... URL: https://gitbox.apache.org/repos/asf/maven-linkcheck-plugin.git
Closing JIRA issue MLINKCHECK-32
OK MLINKCHECK-32 https://issues.apache.org/jira/browse/MLINKCHECK-32
Closing finished.
```

So if you look in my previous post you might be astonished that the number process 
steps has not been reduced dramatically?
Those scripts are replacing a large number of manual steps (git command line
typing, jira in browser, clicking typing etc.) which is now simply handled by
scripts which means the steps are done always in the same way and I am sure 
I do not forget steps.
Furthermore many of scripts can be used in other situations as well which
makes my life easier for example in handling pull request etc.

So this was much longer post.


[part-i]: https://blog.soebes.de/blog/2018/07/21/automate-it-part-i/
[example-release]: https://blogs.apache.org/maven/entry/apache-shared-component-apache-maven
[jira-cli]: https://github.com/Netflix-Skunkworks/go-jira/
[jira-cli-downloads]: https://github.com/Netflix-Skunkworks/go-jira/releases
[yaml]: https://yaml.org/
[release-notes]: https://github.com/khmarbaise/maven-release-notes
[help-plugin]: https://maven.apache.org/plugins/maven-help-plugin/
[custom-commands]: https://github.com/Netflix-Skunkworks/go-jira#custom-commands-1
[create-issue]: https://issues.apache.org/jira/projects/MEJB
[createdependencyupgradeissue]: https://github.com/khmarbaise/automation-scripts/blob/1df1517f27f0ae831ba7f17085fd4feaa3f3e70f/createdependencyupgradeissue.sh
[startonissue]: https://github.com/khmarbaise/automation-scripts/blob/11b71f2d8e32975fe3eacfec86493db5f4e811f8/startissue.sh
[takeissue]: https://github.com/khmarbaise/automation-scripts/blob/11b71f2d8e32975fe3eacfec86493db5f4e811f8/takeissue.sh
[commitonissue]: https://github.com/khmarbaise/automation-scripts/blob/11b71f2d8e32975fe3eacfec86493db5f4e811f8/commitonissue.sh 
[jira-user-login]: https://github.com/Netflix-Skunkworks/go-jira#user-vs-login
[gitmergeandclean]: https://github.com/khmarbaise/automation-scripts/blob/5e3545d17805ab768edcafd89c4ba1e76af8b82e/gitmergeandclean.sh
[beginning]: https://github.com/khmarbaise/automation-scripts/blob/master/gitmergeandclean.sh#L9
[mclean-87]: https://issues.apache.org/jira/browse/MCLEAN-87
[new-gitmergeandclean]: https://github.com/khmarbaise/automation-scripts/blob/aa5dde35b986ded11bf7b65cab6cdce407e6f8b4/gitmergeandclean.sh
