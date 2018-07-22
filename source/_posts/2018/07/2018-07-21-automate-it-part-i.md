---
layout: post
title: "Automate it - Be Lazy - Part I"
date: 2018-07-21 10:00:00
comments: true
categories: [Maven,Automation,DevOps,Programming]
---
So based on my passion as open source developer in particular for 
the [Apache Maven Project][maven-project]. I work [JIRA based][jira]
which helps us and myself to organize our work and of course follow 
the reported issues, feature request etc.

So usually I start my work based on a particular issue in JIRA and go via
the following process:

The process
-----------
1. Create an issue for myself (if already existing move to step 2)
2. Create a branch within the appropriate project based on the issue 
3. Assign the issue to myself
4. Migrate the issue into the state of `IN PROGRESS`
5. Do some work on the branch and commit
6. Push the branch to remote and let [Jenkins check the branch][jenkins-ci]
   repeat with Step 5 until I finished my work.
7. Rebase against master if needed
8. Merge the created branch into master
   and delete the remote and local branch.
9. Close the appropriate jira issue with a reference to the
   commit in comment.

<!-- more -->

Let us take a look at a real life example. The exemplary issue is
[MCLEAN-87][mclean-87] which has been worked on and commited with an
appropriate commit message which should look like the following:

```
[JIRA-ISSUE] - Summary Text
Optional description
```
So the real life [commit looks like this][commit-example]:
```
commit c6eed44352c9ab623836a9329b7645dbb61413bc (HEAD -> master, origin/master, m/master)
Author: Karl Heinz Marbaise <khmarbaise@apache.org>
Date:   Sat Jul 21 18:00:20 2018 +0200

    [MCLEAN-87] - Upgrade maven-plugins parent to version 32
```

If you take a look at the list of process steps, it is a huge number of steps.
Unfortunately many of the steps are manual steps which is time consuming 
and error-prone.

So about four or five months ago I started to automate/simplifying some steps
of the above process.


Automation Step 1
-----------------
In process step 6 while I was working on a branch 
I have to push the current state of the branch over and over again
to remote and let Jenkins check if everything is going fine.
Furthermore it could be that I need to rebase this branch 
against master which has to be followed by a `git push --force BRANCH`
but a `--force` is [very dangerous][danger-force] which means I have to use 
`git push --force-with-lease BRANCH` instead. I already have a bash 
completion for git running which safes a lot of typing but I would 
like to make it more comfortable.

So I started to write a bash script which 
comprises of the following steps:

1. Check if we are on a branch just to be sure.
2. Get the branch name
3. `git push origin --force-with-lease BRANCH`

So this means in the end I simply [call the script][gitpushwithlease]:
```
$ gitpushwithlease.sh
```
The first step of automation accomplished which means a little bit improvement
but not enough.

Automation Step 2
-----------------
So after a time working with that I thought about process step 8 wich is really
much typing and error-prone. Let me summarize the steps:

1. check if we are on a branch
2. get the branch name
3. checkout master
4. merge the branch only if a fast forward is possible fail otherwise
5. push changes to remote master
6. delete the remote branch
7. delete the local branch

The result was my [gitmergeandclean.sh][gitmergeandclean] script which I 
use like the following:

```
$ gitmergeandclean.sh
```

The output looks like this:
```
~/ws-git-maven/plugins/maven-clean-plugin (MCLEAN-87)$ gitmergeandclean.sh
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
Updating 19b981e..c6eed44
Fast-forward
 pom.xml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)
Total 0 (delta 0), reused 0 (delta 0)
remote: Sending notification emails to: ['"commits@maven.apache.org" <commits@maven.apache.org>']
remote: To git@github:apache/maven-clean-plugin.git
remote:    19b981e..c6eed44  c6eed44352c9ab623836a9329b7645dbb61413bc -> master
remote: Syncing refs/heads/master...
To https://gitbox.apache.org/repos/asf/maven-clean-plugin.git
   19b981e..c6eed44  master -> master
remote: Sending notification emails to: ['"commits@maven.apache.org" <commits@maven.apache.org>']
remote: To git@github:apache/maven-clean-plugin.git
remote:  - [deleted]         MCLEAN-87
remote: Syncing refs/heads/MCLEAN-87 (FORCED)...
To https://gitbox.apache.org/repos/asf/maven-clean-plugin.git
 - [deleted]         MCLEAN-87
Deleted branch MCLEAN-87 (was c6eed44). 
```

The second step of automation accomplished which means more improvement
but not enough.


Automation Step 3
-----------------
If I work on a branch I often do several commits on it until
I think I am done. The result is a branch which contains 5, 6 or more 
commits which should be squashed into a single commit with a
good commit message and a reference to the issue I am working on.

This can be done [manually and interactive][git-rebase] via the following steps:

1. Count the number of commits you would like to squash
2. git rebase -i HEAD~NUMBEROFCOMMIT
3. Going through the editor and replace `pick` with `s` for squash.
4. Safe and rewrite the commit message.

(I assume I have missed something).
So this was really cumbersome. So I decided to find a scripted way to handle that.
After some experiments I found a solution which results in my [gitrebasebranch.sh script][gitrebasebranch]

```
$ gitrebasebranch.sh
```
and in the editor I only rework the commit message. That's it. After this I can
do:
```
$ gitpushwithlease.sh
```

The third step of automation accomplished which means more improvement
but not enough.

The story will be continued in my next post.


[maven-project]: https://maven.apache.org
[jira]: https://issues.apache.org/jira/secure/BrowseProjects.jspa?selectedCategory=10510&selectedProjectType=all
[jenkins-ci]: https://builds.apache.org/view/M-R/view/Maven/job/maven-box/job/maven-clean-plugin/
[mclean-87]: https://issues.apache.org/jira/browse/MCLEAN-87
[commit-example]: https://gitbox.apache.org/repos/asf?p=maven-clean-plugin.git;a=commitdiff;h=c6eed44352c9ab623836a9329b7645dbb61413bc
[gitpushwithlease]: https://github.com/khmarbaise/automation-scripts/blob/f82324c08079df49cfdeb60539492b778c5f7445/gitpushwithlease.sh
[gitmergeandclean]: https://github.com/khmarbaise/automation-scripts/blob/5e3545d17805ab768edcafd89c4ba1e76af8b82e/gitmergeandclean.sh
[gitrebasebranch]: https://github.com/khmarbaise/automation-scripts/blob/4ecc12d800603d5538564c64cbd9513aa907e3b8/gitrebasebranch.sh
[danger-force]: https://developer.atlassian.com/blog/2015/04/force-with-lease/
[git-rebase]: https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History#_squashing
