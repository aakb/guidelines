# Drupal: kodestandard

**Metodeansvarlig**: Mikkel Ricky

**Overordnet formål**: Beskrivelse af ITK's kodestandard for Drupal-projekter

<!-- toc -->

* [Kodestandarden](#kodestandarden)
  * [Undtagelser fra Drupals kodestandard](#undtagelser-fra-drupals-kodestandard)
* [Værktøjer](#vaerktojer)
  * [Coder Sniffer](#coder-sniffer)
  * [Konfiguration](#konfiguration)
    * [Drupal 8](#drupal-8)
      * [Eksempler](#eksempler)
    * [Drupal 7](#drupal-7)
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

Installer Drupal Coder som beskrevet i afsnittet [Global Coder
Install](https://www.drupal.org/node/1419988) på
[https://www.drupal.org/node/1419988](https://www.drupal.org/node/1419988).

### Konfiguration

#### Drupal 8

Opret `phpcs.xml.dist` i roden af Drupal-projektet med indhold a la følgende:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ruleset name="dokk1">
  <description>PHP CodeSniffer configuration for a Drupal 8 website</description>

  <!-- The coding standard -->
  <rule ref="Drupal">
    <!-- This check does not work when called from PhpStorm (cf. https://youtrack.jetbrains.com/issue/WI-30583) -->
    <exclude name="Drupal.Array.DisallowLongArraySyntax"/>
  </rule>
  <!-- Add explicit check for short array syntax -->
  <rule ref="Generic.Arrays.DisallowLongArraySyntax"/>

  <!-- Files and directories to check -->
  <file>web/modules/custom/</file>
  <file>web/themes/custom/</file>

  <!-- Generated files -->
  <exclude-pattern>web/themes/custom/*/css/.*</exclude-pattern>
  <!-- Mockups -->
  <exclude-pattern>web/themes/custom/*/mockups/.*</exclude-pattern>

  <!-- Show progress -->
  <arg value="p"/>
</ruleset>
```

##### Eksempler

* [Dokk1](https://github.com/aakb/dokk1/tree/feature/code-standard)
  [[`phpcs.xml.dist`](https://github.com/aakb/dokk1/blob/feature/code-standard/phpcs.xml.dist)]
  [[`.idea/`](https://github.com/aakb/dokk1/tree/feature/code-standard/.idea)]

#### Drupal 7

Opret `phpcs.xml.dist` i roden af Drupal-projektet med indhold a la følgende:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ruleset name="dokk1">
  <description>PHP CodeSniffer configuration for a Drupal 7 website</description>

  <!-- The coding standard -->
  <rule ref="Drupal"/>

  <!-- Files and directories to check -->
  <file>modules/custom/</file>
  <file>themes/custom/</file>

  <!-- Show progress -->
  <arg value="p"/>
</ruleset>
```

**@TODO**: Hvordan holder vi denne fil opdateret på tværs af Drupal-projekter?

#### Integrationer

* [Drupal-opsætning i PhpStorm](phpstorm.md#drupal-opsaetning-i-phpstorm)
