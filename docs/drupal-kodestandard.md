# Drupal: kodestandard

**Metodeansvarlig**: Mikkel Ricky

**Overordnet formål**: Beskrivelse af ITK's kodestandard for Drupal-projekter

<!-- toc -->

* [Kodestandarden](#kodestandarden)
  * [Undtagelser fra Drupals kodestandard](#undtagelser-fra-drupals-kodestandard)
  * [Tilføjelser til Drupals kodestandard](#tilfojelser-til-drupals-kodestandard)
* [Værktøjer](#vaerktojer)
  * [PHP_CodeSniffer](#php_codesniffer)
    * [Konfiguration](#konfiguration)
  * [The PHP Coding Standards Fixer](#the-php-coding-standards-fixer)
    * [Installation](#installation)
    * [Brug](#brug)
    * [Konfiguration](#konfiguration-1)
    * [Integrationer](#integrationer)

<!-- tocstop -->

## Kodestandarden

Vi overholder [Drupals
kodestandard](https://www.drupal.org/docs/develop/standards/coding-standards):
[https://www.drupal.org/docs/develop/standards/coding-standards](https://www.drupal.org/docs/develop/standards/coding-standards).

### Undtagelser fra Drupals kodestandard

Ingen.

## Værktøjer

### Coder Sniffer

Installer Coder Sniffer som beskrevet i afsnittet [Global Coder
Install](https://www.drupal.org/node/1419988) på
[https://www.drupal.org/node/1419988](https://www.drupal.org/node/1419988).

### Konfiguration

Opret `phpcs.xml.dist` i roden af Drupal-projektet med følgende indhold:

```xml
<?xml version="1.0"?>

<ruleset name="PHP_CodeSniffer">
  <description>The project coding standard.</description>

  <!-- The coding standard -->
  <rule ref="Drupal"/>

  <!-- Files and directories to check -->
  <file>web/modules/custom/</file>
  <file>web/themes/custom/</file>

  <!-- Show progress -->
  <arg value="p"/>
</ruleset>
```

### Drupal 7

Erstat `file`-elementerne i `phpcs.xml.dist` med noget a la følgende:

```xml
  <!-- Files and directories to check -->
  <file>modules/custom/</file>
  <file>sites/all/modules/custom/</file>
```

**@TODO**: Hvordan holder vi denne fil opdateret på tværs af Drupal-projekter?

#### Integrationer

* [Drupal-opsætning i PhpStorm](phpstorm.md#drupal-opsaetning-i-phpstorm)
