ITK Design - GIT guidelines
==========

This document is a guideline for using GIT with projects at ITK Design.

These are *guidelines*, and if you think it's necessary to deviate feel free to do so, **but** please be sensible and only do this when necessary and make sure you don't break it for everyone else.

* Be familiar with [Git](http://git-scm.com/)
* and [A successful Git branching model (Gitflow)](http://nvie.com/posts/a-successful-git-branching-model/)
* and [Gitflow workflow](https://www.atlassian.com/git/workflows#!workflow-gitflow)

Below is only summarized, so be sure to familiarize yourself with the above mentioned.

Content
----------

1. [Gitflow Workflow](#workflow)
2. [Main Branches](#main)
3. [Feature Branches](#feature)
4. [Release Branches](#release)
5. [Maintenance Branches](#maintenance)
6. [Gitflow made visual](#visual)
7. [Commit messages](#commit)

<a name="workflow"></a>
1. Gitflow Workflow
----------

We use the gitflow workflow for our projects. It's a workflow utlizing a strict branching model around our project release. The model is similar to the [Feature Branch model](https://www.atlassian.com/git/workflows#!workflow-feature-branch) just more thorough.

<a name="main"></a>
2. Main Branches
----------

We use to main branches to store our project history, these branches have an infinite lifetime.

* master
* development

The master branch stores the official release history, and the development branch serves as an integration branch for features.

Work and branching out takes place from development branch and everytime a merge back to master is done it by definition a new production release.

It's convenient to tag all commits in the master branch with a version number.

<a name="feature"></a>
3. Feature Branches
----------

New features should reside in its own branch, which can then be pushed to the central repository. Never branch off of master, feature branches use development as their parent. When a feature is completed, it is merged back into development. Feature branches should never interact directly with master.

Of course not everything need a feature branch. As a rule of thumb we allways branch out into a feature branch when work is to stretch out over several hours/days or when the work needs to be isolated and/or tested individually.

Conventions:

* branch off: development
* merge into: development
* naming convention: anything except master, development, release-*, or hotfix-*

<a name="release"></a>
4. Release Branches
----------

When enough features have been accomulated into the development branch a release branch i created. A release branch is not strictly needed as development could be merged directly into master branch. So we only create the release branch if we need to use it for final adjustments or demonstration before merging it into master.

Conventions:

* branch off: development
* merge into: master
* naming convention: release-* or release/*

<a name="maintenance"></a>
5. Maintenance Branches
----------

Maintenance or "hotfix" branches are used to quickly patch production releases. This is the only branch that can and should branch out directly of master. As soon as the fix is complete, it should be merged into both master and development (or the current release branch), and master should be tagged with an updated version number.

We do allow hotfixes do be done directly on development branch as long as it won't interfer with any ongoing additional work and you have to fix something small quickly.

Conventions:

* branch off: master
* merge into: development and master
* naming convention: hotfix-*

<a name="visual"></a>
6. Visual view of Gitflow model
----------

![gitflow](assets/git-workflow-gitflow.png "Gitflow, image taken from atlassian.com")  
image courtesy of atlassian.com

<a name="commit"></a>
7. Writing good commit messages
----------

Good commit messages serve three important purposes:

* Speed up the reviewing process.
* Help us write a good release note.
* Help the future maintainers (it could be you!), say five years into the future, to find out why a particular change was made to the code or why a specific feature was added.

Structure your commit message like this:

<pre>
Summarize clearly in one line what the commit is about

Describe the problem the commit solves or the use
case for a new feature. Justify why you chose
the particular solution.
</pre>

### Do

* Write the summary line and description of what you have done in the imperative mode, that is as if you were commanding someone. Write "fix", "add", "change" instead of "fixed", "added", "changed".

* Always leave the second line blank.
* Line break the commit message (to make the commit message readable without having to scroll horizontally).

### Don't

* Don't end the summary line with a period.

### Tips

* If it seems difficult to summarize what your commit does, it may be because it includes several logical changes or bug fixes, and are better split up into several commits using @git add -p@. ([more on using git add -p](http://johnkary.net/blog/git-add-p-the-most-powerful-git-feature-youre-not-using-yet/))

