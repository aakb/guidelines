Drupal 8 - common modules and tools
==========
Contains a list of D8 modules and tools that we often use and have knowledge about.

Use this document as a reference, when creating new projects. Both as a reminder of
things to consider when building new sites, and as a reference of which modules
to use to solve a particular use case. See Drupal 8 workflow description in Dropbox
for more information on setting up new drupal 8 sites:

https://www.dropbox.com/preview/Dev%20Team/Processer%20og%20overblik/Procesbeskrivelser/Proces%20Drupal%208.docx

## Fetch some or all of the modules described below
Add the ITK packagist to composer repositories array:

    composer config repositories.itk composer https://packagist.etek.dk

Require the latest version of all modules described in this document with composer:

    composer require drupal/adminimal_theme drupal/pathauto drupal/field_group drupal/metatag drupal/redirect drupal/toolbar_visibility drupal/role_delegation drupal/paragraphs drupal/youtube drupal/itk_media_entity drupal/itk_cookie_message drupal/itk-admin-links drupal/itk-user-pages-theme

Or require a particular module from the list below:

    composer require drupal/adminimal_theme

    composer require drupal/pathauto

    composer require drupal/field_group

    composer require drupal/metatag

    composer require drupal/redirect

    composer require drupal/toolbar_visibility

    composer require drupal/role_delegation

    composer require drupal/paragraphs

    composer require drupal/youtube

    composer require drupal/itk_media_entity

    composer require drupal/itk_cookie_message

    composer require drupal/itk-admin-links

    composer require drupal/itk-user-pages-theme

## Contrib themes

### Adminimal theme (Contrib theme)
    composer require drupal/adminimal_theme
The Seven theme with a bit more fancyness.

**Use when:** You want to give the backend theme a makeover.

## Contrib modules

### Pathauto (Contrib module)
    composer require drupal/pathauto
Provides a mechanism for modules to automatically generate aliases for the content they manage.

**Use when:** You want to modify the urls of your site and set up automation for url generation.

### Field group (Contrib module)
    composer require drupal/field_group
Provides the ability to group your fields on both form and display.

**Use when:** You want to better structure your forms for editors and group certain fields into wrappers.

### Metatag (Contrib module)
    composer require drupal/metatag
Manage meta tags for all entities.

**Use when:** you want to configure metatags for the entities on your site.

### Redirect (Contrib module)
    composer require drupal/redirect
Allows users to redirect from old URLs to new URL.

**Use when:** You want to modify the urls of your site and set up automation for url generation.

### Toolbar visibility (Contrib module)
    composer require drupal/toolbar_visibility
Choose theme to show the toolbar

**Use when:** You want to hide the toolbar in the frontend.

### Role delegation (Contrib module)
    composer require drupal/role_delegation
Allows site administrators to grant some roles the authority to assign selected roles to users.

**Use when:** You want a more granular control of which users can grant permissions to other users.
This is often relevant when your site uses multiple roles.

### Paragraphs (Contrib module)
    composer require drupal/paragraphs
Enables the creation of paragraphs entities.

**Use when:** You want to structure your content into different types of paragraphs.
Paragraph module is also useful when your want to create a multivalue field with multiple inputs for each value.


### Youtube (Contrib module)
    composer require drupal/youtube
Defines a YouTube video and thumbnail field type.

**Use when:** You want to attach a youtube video to your content.

## Custom modules
### ITK media entity (Custom module)
    composer require drupal/itk_media_entity
An ITK Media entity configuration
A suite of contrib and core modules that provide a media library solution.
Includes a minimal configuration setup to provide a configuration base and an example of usage.

**Use when:** You want more control of your media than what drupal core provides.

### ITK cookie message (Custom module)
    composer require drupal/itk_cookie_message
A cookie compliance module

**Use when:** Your site is open to public and must have a cookie compliance popup.

### ITK admin links (Custom module)
    composer require drupal/itk-admin-links
Provides a few admin links to editor in the front end.

**Use when:** You hide the admin toolbar in front end (See: Toolbar visibility above)

### ITK user pages theme (Custom module)
    composer require drupal/itk-user-pages-theme
Provides admin theme on user pages for anonymous users

**Use when:** You want to use the admin theme for login pages and password request pages.

## Tools

### Drush (Tool - Ships with drupal-composer/drupal-project)
    composer require drush/drush
A tool to do simple drupal tasks from command line.

### Drupal console (Tool - Ships with drupal-composer/drupal-project)
    composer require drupal/console
Another shell tool that can perform more complex tasks such as
  * Auto generate code for controllers
  * Auto generate code for plugins
  * Generate dummy content
  * Debugging

And many other @ https://drupalconsole.com/cheatsheet/#
