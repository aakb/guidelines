# Opdateringer i Drupal 8

**Metodeansvarlig**: Martin Yde Granath

## Overordnet formål
At dokumentere en simpel metode til opdatering af drupal 8 løsninger.

## Afgrænsning af metode
* Antager at sitet er bygget med composer. Se Drupal 8 processbeskrivelse.
* Antager at site alias og site scripts eksisterer og er ensrettet.
* Antager at dev site og prod site er placeret på enten atea eller linode servere.
* Antager at en lokal vagrant løsning eksisterer.


## Regel 1 - Forberedelse
Opdater dit lokale miljø før der foretages nogle ændringer:
```
git checkout master
git pull
drush pull-prod
```

## Regel 2 - Opdatering:
Opret ny hotfix branch:

    git checkout –b hotfix/[name]

Opdatér kode lokalt:

    composer update

Opdatér database og eksportér ny konfiguration:
```
drush updb
drush entup
drush config-export
```

Opdatér sprogpakker:

```
drush locale-check
drush locale-update
drush cr
```

Opdatér CHANGELOG.md
Push ny kode til github:
```
git commit …
git push –u origin hotfix/[name]
```

## Regel 5 - UPDATE-README.md fil
Undersøg om projectets document root indeholder en UPDATE-README.md fil med yderligere projektspecifikke instrukser iforbindelse med updates. Udfør i så fald disse instrukser.

## Regel 4 – Test
Push branchen til et development site og kør tests.

Omfanget af tests varierer imellem sites. Mindre sites med få brugere og mindre supportaftale får mindre tid til test.
Beslutningen om hvilke tests der skal køres foretages af projektledelsen. Men i udgangspunktet bør alle tilgængelige automatiske tests køres.

Mulighederne for tests indbefatter:
* Manual tests
* Visual regression tests
* Unit tests
* Integration tests
* Behat

## Regel 5 - Release:
Når testansvarlig har godkendt opdateringen er den klar til release.

Fra local document root:
```
git checkout develop
git merge –no-ff hotfix/update-[name]
git push develop
git checkout master
git merge –no-ff hotfix/update-[name]
git push master
git tag [version number]
git push origin [version number]
```

Fra prod document root:
```
git fetch –-tags
git checkout [version number]
```

Opdatér db:
```
drush updb
drush entup
drush config-import
```
Opdatér sprogpakker:
```
drush locale-check
drush locale-update
drush cr
```