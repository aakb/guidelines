ITK Design - Code standards
==========

This document is a guideline for writing good standarized and readable code when working with a Drupal project.

These are *guidelines*, and if you think it's necessary to deviate feel free to do so, **but** please be sensible and only do this when necessary and make sure you don't break it for everyone else. And if you do, be sure to leave a comment with your reason so it won't stay inside your head only.

The guidelines should help achieve:

* A stable, secure and high quality foundation for building and maintaining websites
* Consistency across multiple developers participating in the project
* The best possible conditions for sharing modules between sites
* The best possible conditions for the individual website to customize configuration and appearance

*When working with a open source community project like Ding*  
Contributions to the core project will be reviewed by members of the core team. These guidelines should inform contributors about what to expect in such a review. If a review comment cannot be traced back to one of these guidelines it indicates that the guidelines should be updated to ensure transparency.

* Be familiar with [Drupal Coding Standards](https://drupal.org/coding-standards)
* and [PHP codesniffer](http://pear.php.net/manual/en/package.php.php-codesniffer.php)

Content
----------

1. [Coding standards](#coding_standards)

<a name="coding_standards"></a>
1. Coding standards
----------

### PHP

Code must be compatible with PHP 5.3. Compatability can be checked using PHP_Codesniffer.

Code must conform to the [Drupal Coding Standards](https://drupal.org/coding-standards). In effect this means that the code must pass through an automated review by the [Coder module](https://drupal.org/project/coder) without any notices expect known false negatives. The review must include all severities and all reviews except upgrade7x.

Code must not generate notices without erroneous conditions when running in E_STRICT error mode .

### JavaScript

It is recommended that JavaScript code is checked by JSHint with options:

* debug
* forin
* qnull
* noarg
* noempty
* eqeqeq
* boss
* loopfunc
* evil
* laxbreak
* bitwise
* strict
* undef
* nonew
* browser
* jquery

If the web-version is used this equals to checking all warnings and assuming jQuery and Browser environment.

### CSS

See [CSS guidelines](css-guidelines.md)
 
### Documentation

**README:** All modules must contain a README.md file containing the following where applicable:

* A brief description of the module - preferably with a screenshot
* Configuration options
* Installation procedure
* Hidden variables
* Other requirements and how to obtain these such as API urls, versions, keys, library system and trimmings
* Any code which does not comply with these guidelines and a brief argument why

**LICENSE.txt:** All repositories must contain a LICENSE.txt file containing the license for project: GPL2.


Naming

General

All names must be in English.
Modules

All modules written specifically for Ding must be prefixed with either ding or ting e.g.ding_your_module. Which prefix to choose depends on the scope of the module:<
Modules dealing primarily with the Open* webservices should be prefixed with ting e.g. ting_search_autocomplete.
Modules providing functionality based on library systems or the Ding content model should be prefixed with ding e.g. ding_event.
The prefixed are not required for modules which provides functionality deemed relevant outside the Ding sphere e.g. Blackhole and Opening Hours.
Files

Files provide by modules must be placed in the following folders and have the extensions defined here.

General
MODULENAME.info
MODULENAME.module
MODULENAME.install
includes/*.inc
templates/*.tpl.php
*.theme.inc
CSS:
CSS files must use the BAT (Base/Admin/Theme) naming schema as described here.
/css/*.(base|admin|theme).css
/sass/*.(base|admin|theme).scss
/sass/libs/*
JavaScript
Files must have to include the module name to easily find there origin during debugging
/js/*.MODULENAME.js
Images
Images resources must be placed in a folder named img and have the following extensions.
img/*.(png|jpeg|gif)
External resources (PHP and JavaScript libraries) must be included using Libraries API version 2.x module
Module elements

Programmatic elements such as variables, content types, views and panel pages, defined in modules must comply to a set of common guidelines.
Machine names should be prefixed with the name of the module that defines them
Administrative titles, human readable names and descriptions should contain the purpose of the view
If a programmatic element supports tagging e.g. rules and views one of the tags must be the name of the module that defines them 
As there is no finite set of programmatic elements for a Ding site these apply to all types except if explicitly specified below.

Guidelines for specific elements:
Panel variants (handlers) must not use auto generated names as this increases the risk of different modules implementing variants for the same pages overwriting each other. Instead use module_name_page_name_variant_name e.g. ding_blog_node_view_blog NB: Auto generated names is the default behavior when using features!
Repositories

Repositories should names after the module contained within. The repository for the module ding_event should be called ding_event.
Code Structure

Each module should be placed within its own repository. Each repository should only contain one module.
If a module has dependencies these should be declared within a .make file included with the module so that they are downloaded automatically during a build. Dependencies can be projects on Drupal.org or external resources. It is recommended that dependencies specify a specific version.
A module should provide all required code and resources for it to work on its own or through dependencies. This includes all configuration, theming, CSS, images and JavaScript libraries.
All default configuration required for a module to function should be implemented in code. The preferred way of doing this is using the Features module or hooks provided by the module itself. Modules where configuration cannot be handled using features should maintain configuration using hook_install() and hook_update_N().
If a module requires configuration for which there is no sensible default the module must implement hook_ding_install_tasks() such that users can perform the necessary configuration during installation.
All default text content in modules must be in English. Localization of content must be handled using the Drupal translation modules. 
Updating core modules

If a core module is expanded with updates to current functionality the default behavior must be the same as previous versions or as close to this as possible. This also includes new modules which replaces current modules.
If an update does not provide a way to reuse existing content and/or configuration the update then the decision on whether to include the change resides with the Ding team. If the Ding team can not reach an agreement the Ding Council will make the decision.
Altering existing modules

Modules which alter or extend functionality provided by the core modules should use appropriate alter hooks to override these instead of forking these modules.
In cases where modules provide layered configuration modules should implement new layers with a higher priority than default configuration instead of altering the default configuration. This is often handled through lower weights. To support multiple modules providing separate layers of configuration without conflicts identifiers must be unique to the module as opposed to auto-generated. This may require altering auto-generated code manually. The recommended way to generate unique identifiers would be to prefix the existing identifier with the module name. Example: Panel variants.
It is preferable to add a new layer to layered configuration instead of altering an existing layer provided by the core modules. This ensures that alterations and extensions work as expected even when the core modules are updated. This means that sites which use alterations may not reflect the latest changes to core. It is deemed preferable instead of potentially breaking the site.