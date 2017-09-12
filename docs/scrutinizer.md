# Scrutinizer usage

__Responsible__: Jesper Kristensen

__Updateted__: 07/09/17

## Overall purpose

* Ensure code quality and uniformity.

## Limitation of method

Only covers PHP projects.

## Rules

To use [Scrutinizer](http://scrutinizer-ci.com/) login to the site with
your github account (which should be linked to the _ITK Development_ organization).

1. Click on _Add Repository_ and follow the guide.
2. Select the develop branch as the one to automatically to check.
3. Add _.scrutinizer.yml_ to the base of the git repository with the content
   as show below.

### Configuration

For more information about the configuration options see [https://scrutinizer-ci.com/docs/configuration/build](https://scrutinizer-ci.com/docs/configuration/build)

### Drupal configuration

```yml
build:
    environment:
        php: '7.0'

tools:
  php_code_sniffer:
    config:
      standard: Drupal
    extensions:
      - module
      - inc
      - install
      - test
      - profile
      - theme
  js_hint:
    use_native_config: true

build_failure_conditions:
  # No new issues allowed.
  - 'issues.new.exists'

filter:
    excluded_paths:
        # Generated Features code
        - '*.features.*'
        - '*.feeds_importer_default.inc'
        - '*.field_group.inc'
        - '*.layouts.inc'
        - '*.pages_default.inc'
        - '*.panels_default.inc'
        - '*.panelizer.inc'
        - '*.strongarm.inc'
        - '*.views_default.inc'
        - '*.min.js'
        - 'vendor/*'
        - 'drush/*'
        - 'config/*'
        - 'web/core/*'
        - 'scripts/*'

checks:
    php:
        code_rating: true
        duplication: true
    excluded_dependencies:
          - drupal/core
```
