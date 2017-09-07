# PhpStorm

<!-- toc -->

* [Drupal](#drupal)
* [Drupal-opsætning i PhpStorm](#drupal-opsaetning-i-phpstorm)
* [Tjek af kode](#tjek-af-kode)
  * [Eksempler](#eksempler)
* [Litteraturliste](#litteraturliste)

<!-- tocstop -->

## Drupal

Drupal coder spiller pt. ikke sammen med `phpcs v. 3.0`
(jf. [https://github.com/pfrenssen/coder/pull/7](https://github.com/pfrenssen/coder/pull/7)).

`brew install php-code-sniffer` installerer pt. `phpcs v. 3.0`, men
man kan installere `php-code-sniffer@2.9` – det er dog noget bøvl …
Det er nemmere at bruge composer
(jf. [https://www.drupal.org/node/1419988](https://www.drupal.org/node/1419988)).

## Drupal-opsætning i PhpStorm

```menu
Settings > Language & Frameworks > PHP > Frameworks > Drupal
```

Check path to `phpcs`:

```menu
Project Settings > PHP > Code Sniffer > Configuration > Local > […]
```

```menu
Project Settings > Editor > Inspections > PHP > PHP Code Sniffer validation
Coding Standard: Custom
[…]
```

Sæt `Path to ruleset` til stien til projektets `phpcs.xml.dist`-fil.

Deaktiver evt. “Inspections” der ikke er aktuelle for projektet.

**Bemærk**: Drupal coder forsøger at gætte versionen af Drupal som en
fil tilhører. Det kan skidtet ikke når det køres fra PhpStorm og
derfor bliver visse tjek (fx
`Drupal.Array.DisallowLongArraySyntax.Found`) ikke udført
korrekt. Kør derfor altid `phpcs` i terminalen for en sikkerheds skyld.

## Tjek af kode

Via `Inspect Code…` kan koden nu tjekkes

```menu
Menu > Code > Inspect Code…
```

For at dele indstillinger skal `.idea`-mappen lægges i
versionsstyring. Se [How to manage projects under Version Control
Systems](https://intellij-support.jetbrains.com/hc/en-us/articles/206544839)
for detaljer og sikr at `.gitignore` indeholder reglerne fra
[JetBrains.gitignore](https://github.com/github/gitignore/blob/master/Global/JetBrains.gitignore).

### Eksempler

* [Dokk1-gæstehåndtering](https://github.com/aakb/dokk1gh/tree/develop)
  [[`phpcs.xml.dist`](https://github.com/aakb/dokk1gh/tree/develop/phpcs.xml.dist)]
  [[`.idea/`](https://github.com/aakb/dokk1gh/tree/develop/.idea/)]

## Litteraturliste

* [PHP Code Sniffer in PhpStorm](https://confluence.jetbrains.com/display/PhpStorm/PHP+Code+Sniffer+in+PhpStorm)
