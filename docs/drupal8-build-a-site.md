# Byg et Drupal 8 site

## Information

__Metodeansvarlig__: Troels Ugilt Jensen

__Overordnet formål__: Få en ensartet måde at bygge nye Drupal 8 sites op.

__Afgrænsning af metode__: Dette handler om hvordan vi ensretter vores opbygning
af Drupal 8 sites, ikke compile scripts, osv.

## Regel 1 - Composer

Vi bygger Drupal 8 sites med composer:
[drupal.org/docs/develop/using-composer/using-composer-with-drupal](https://www.drupal.org/docs/develop/using-composer/using-composer-with-drupal).

## Regel 2 – Byg Drupal med composer

Vi tager udgangspunkt i det følgende Drupal projekt:
[github.com/drupal-composer/drupal-project](https://github.com/drupal-composer/drupal-project)
, som giver en grundstruktur til sitet, som er anderledes end sædvanligt.

* Drupal core installeres under web/core.
* Contrib moduler installeres under web/modules/contrib

Drupal core og vendor packages installeres med:

```sh
composer create-project drupal-composer/drupal-project:8.x-dev [some-dir] --stability dev --no-interaction
```

Alle afhængigheder styres i composer.json i roden af projektet. Alle contrib
moduler installeres med composer. F.eks.:

```sh
composer require drupal/pathauto
```

Efterfølgende kan følgende dokument bruges som reference til hvilke moduler vi
ofte anvender: [d8-modules.md](d8-modules.md)

## Regel 3 – Drupal opdateringer

For at opdatere et Drupal core bruges composer. F.eks.:

```sh
composer update drupal/core --with-dependencies
```

For at opdatere et contrib modul bruges:

```sh
composer update drupal/[MODULE_NAME]
```

For at slette et contrib modul bruges:

```sh
composer remove drupal/[MODULE_NAME]
```

Bemærk: Modulet skal deaktiveres i Drupal før det slettes. Eksempelvis med
Drush:

```sh
drush pm-uninstall [MODULE_NAME]
```

## Regel 4 – Custom kode

Custom modules, profiles og themes lægges under:

* web/__modules__/custom
* web/__profiles__/custom
* web/__themes__/custom

## Regel 5 – sites/default

Vi bruger følgende opsætning af sites/default:

@TODO: tilføj information omkring hvordan man activer local
       settings etc. på det clean site.

`settings.php` indeholder ingen hemmelig data (+ er i git) men linker til
`settings.local.php` som indeholder disse data. Dette gør at vi kan deploye let
til platform.sh.

Vi har scripts til at oprette de relevante filer under site install. Dvs.
kopiere en ny settings.php fil til at overskrive den fil Drupal opretter under
site install.

## Regel 6 – Site setup

Vi har i vores vagrant et script til site_setup (`site_setup.sh`).

Først køres composer install fra roden af projektet.

Sitet installeres med drush site-install, med parameteren
`--config-dir=[PATH TO CONFIG DIR]`:

```sh
drush --yes site-install minimal --db-url='mysql://[USER]:[PASSWORD]@localhost/db' --account-name=admin --account-mail=[ACCOUNT_EMAIL] --config-dir=/vagrant/htdocs/config/sync
```

Dette gør at vi kan bygge et site fra bunden uden at skulle hente en database
ned fra en server først.

## Regel 7 - Konfiguration

Konfigurationen gemmes under `config/sync`.

Vi gemmer altid hele config for sitet i denne mappe. Hvis der er modul-specifik
kode i sitet og modulet skal genbruges skal den givne konfiguration kopieres
(uden UUID og language code) til modulets config/install eller config/optional
mappe.

Modulet drupal/features kan med fordel bruges til at generere modulspecifik
konfiguration.

## Regel 8 - Ensretning af sites

Når et Drupal 8 site ikke følger konventionerne og har en anden opbygning end
den aftalte, skal sitets opsætning ensrettes med ovenstående regler.
