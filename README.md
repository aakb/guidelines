# ITK DevTeam - Guidelines

## Drupal

* [Byg et Drupal 8-site](docs/drupal8-build-a-site.md)
* [Drupal 8 standard moduler](docs/d8-modules.md)
* [Drupal 7 opdateringer](docs/d7-updates.md)
* [Drupal 8 opdateringer](docs/d8-updates.md)
* [GIT guidelines](docs/git-guidelines.md)
* [ITK Packagist](docs/itk-packagist-guidelines.md)

## Projektledelse

* [Arkitekturtegninger](docs/architectures.md)

## Old Guidelines for developing websites in the ITK organization

* [Behat testing guidelines](docs/behat-testing.md)
* [Code standards](docs/code-standards.md)
* [CSS guidelines](docs/css-guidelines.md)
* [Javascript guidelines](docs/js-guidelines.md)
* [Project checklist](docs/project-checklist.md)

--------------------------------------------------------------------------------

## Retningslinjer for dokumentation

Dokumentation skrives i [Markdown](https://guides.github.com/features/mastering-markdown/).

Markdown-dokumenterne skal overholde vores retningslinjer for
Markdown, og til dette formål kan man “linte” for at tjekke at alt er
som det skal være.

### Opsætning af “lint”

Vores lint-værktøj skal installeres på følgende vis:

```sh
(cd tools && npm install)
```

Dette installerer også et
[pre-commit-hook](https://git-scm.com/book/gr/v2/Customizing-Git-Git-Hooks)
i Git som tjekker ændrede dokumenter ved `git commit`.

### Tjek af dokumenter

Fra roden af dette repository kan man nu køre

```sh
tools/lint.sh
```

for at tjekke alle Markdown-dokumenter. Man kan også angive hvilke
dokumenter der skal tjekkes, fx:

```sh
tools/lint.sh $(git diff --name-only | grep '\.md$')
```

### Tips og tricks

Kodeblokke skal altid omkranses af `` ``` `` og `` ``` `` og sproget i
kodeblokken skal angives, fx

    ```sh
    git clone https://github.com/aakb/guidelines.git
    ```

    ```php
    <?php
    class MyClass
    {
        …
    }
    ```

Vi bruger “sh” som sprog for konsolbesværgelser.
