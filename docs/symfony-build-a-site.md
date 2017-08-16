# Byg et Symfony site

## Information

__Metodeansvarlig__: Troels Ugilt Jensen

__Overordnet formål__: Få en ensartet måde at bygge nye Symfony sites på.

__Afgrænsning af metode__: Dette handler om hvordan vi ensretter vores opbygning
af Symfony sites, ikke compile scripts, osv.

## Regel 1 - Byg et nyt site

Et Symfony bygges med composer. Nye Symfony sites bygges af den nyeste 3.x
version af Symfony. Følg instrukserne her:
[https://symfony.com/download](https://symfony.com/download)

## Regel 2 - Eksterne afhængigheder

Eksterne afhængigheder (Bundles) installeres med composer:

```sh
composer require [bundle]
```

## Regel 3 - Doctrine

Vi bygger Symfony entities med Doctrine:
[http://www.doctrine-project.org/](http://www.doctrine-project.org/)

Se:
[https://symfony.com/doc/current/doctrine.html](https://symfony.com/doc/current/doctrine.html)

## Regel 4 - Doctrine Migrations

Et site skal kunne migreres fra en tom database til nyeste version af
database schema.

Til dette bruger vi Doctrine Migrations:
[http://symfony.com/doc/master/bundles/DoctrineMigrationsBundle/index.html](http://symfony.com/doc/master/bundles/DoctrineMigrationsBundle/index.html)

Når man laver en ændring af database skemaet, skal man sørge for at lave en
Doctrine migration til ændringen. Dette gøres med:

```sh
bin/console doctrine:migrations:diff
```

Se andre kommandoer her:
[http://symfony.com/doc/master/bundles/DoctrineMigrationsBundle/index.html#usage](http://symfony.com/doc/master/bundles/DoctrineMigrationsBundle/index.html#usage)

## Regel 5 - ofte brugte moduler

* FosUserBundle
