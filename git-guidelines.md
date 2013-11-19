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
2. Feature Branches
----------

New features should reside in its own branch, which can then be pushed to the central repository. Never branch off of master, feature branches use development as their parent. When a feature is completed, it is merged back into development. Feature branches should never interact directly with master.

Of course not everything need a feature branch. As a rule of thumb we allways branch out into a feature branch when work is to stretch out over several hours/days or when the work needs to be isolated and/or tested individually.

Conventions:

* branch off: development
* merge into: development
* naming convention: anything except master, development, release-*, or hotfix-*

<a name="release"></a>
2. Release Branches
----------

When enough features have been accomulated into the development branch a release branch i created. A release branch is not strictly needed as development could be merged directly into master branch. So we only create the release branch if we need to use it for final adjustments or demonstration before merging it into master.

Conventions:

* branch off: development
* merge into: master
* naming convention: release-* or release/*

