# Symfony: kodestandard

**Metodeansvarlig**: Mikkel Ricky

**Overordnet formål**: Bekrivelse af ITK's kodestandard for Symfony-projekter

## Kodestandarden

Vi overholder [Symfonys
kodestandard](https://symfony.com/doc/current/contributing/code/standards.html):
[https://symfony.com/doc/current/contributing/code/standards.html](https://symfony.com/doc/current/contributing/code/standards.html).

### Undtagelser fra Symfonys kodestandard

Ingen.

### Tilføjelser til Symfonys kodestandard

**@TODO**: Kræver afklaring/-stemning

* Short array syntax?
* [https://github.com/FriendsOfPHP/PHP-CS-Fixer/blob/2.4/.php_cs.dist](https://github.com/FriendsOfPHP/PHP-CS-Fixer/blob/2.4/.php_cs.dist)?

## Værktøjer

Et godt bud på et værktøj der kan hjælpe os med at overholde
kodestandarden er [The PHP Coding Standards
Fixer](http://cs.sensiolabs.org/). Som navnet antyder er dette en
"fixer", dvs. værktøjet kan rette eventuelle fejl, men man kan også få
en liste over hvilke rettelser der skal laves for at overholde
standarden.

### Installering af PHP Coding Standards Fixer

```sh
brew install php-cs-fixer
```

eller

```sh
composer global require friendsofphp/php-cs-fixer
```

#### Tjek kode

Et "dry run" af `php-cs-fixer` viser hvilke filer der indeholder fejl,
men retter ikke i filerne:

```sh
php-cs-fixer fix --rules=@Symfony --dry-run
```

Tilføj `--verbose` for at se at/om der sker noget undervejs:

```sh
php-cs-fixer fix --rules=@Symfony --dry-run --verbose
```

`php-cs-fixer` brokker sig hvis [`xdebug`](https://xdebug.org/) er
aktiveret og der er en markant hastighedsforbedring ved at køre
`php-cs-fixer` uden `xdebug':

```sh
php -n $(which php-cs-fixer) fix --rules=@Symfony --dry-run --verbose --diff
```

Efter grundig gennemgang af eventuelle ændringer som `php-cs-fixer`
vil lave kan man automatisk få rettet koden:

```sh
php-cs-fixer fix --rules=@Symfony
```

#### Konfiguration

I stedet for at (glemme at) sende en sværm at argumenter med til `php-cs-fixer`
hver gang kan man lave en konfigurationsfil som angiver hvilke filer
der skal overholde hvilke regler. Filen skal hedde `.php_cs.dist` og
ligge i roden af projektet:

```php
<?php

$finder = PhpCsFixer\Finder::create()
    ->in(__DIR__.'/{app,src,tests}');

return PhpCsFixer\Config::create()
    ->setRiskyAllowed(true)
    ->setRules([
        '@Symfony' => true,
        '@Symfony:risky' => true,
    ])
    ->setFinder($finder);
```

**@TODO**: Hvordan holder vi denne fil opdateret på tværs af Symfony-projekter?

#### Integrationer

* [Using PHP CS Fixer on
  CI](https://github.com/FriendsOfPHP/PHP-CS-Fixer#using-php-cs-fixer-on-ci)
* [How to configure PHPStorm to use
  PHP-CS-Fixer](https://hackernoon.com/how-to-configure-phpstorm-to-use-php-cs-fixer-1844991e521f)
