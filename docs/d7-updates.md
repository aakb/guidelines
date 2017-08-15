# Opdateringer i Drupal 7

**Metodeansvarlig**: Martin Yde Granath

## Overordnet formål
At dokumentere de mest relevante opgaver i forbindelse med en Drupal 7 opdatering.

## Afgrænsning af metode
* Eftersom de Drupal7 sites vi har til opgave at opdatere er vidt forskellige i størrelse og omfang og nogle gange udviklet eksternt er det ikke muligt at lave en ensrettet metode til opdatering af alle sites.
I stedet indeholder dokumentet her en række opgaver der ofte vil være relevante i forbindelse med en opdatering.
* Antager at site alias og site scripts eksisterer og er oprettet.
* Antager at dev site og prod site er placeret på enten atea eller linode servere.
* Antager at en lokal vagrant løsning eksisterer.


## Regel 1 - Forberedelse
Opdater dit lokale miljø før der foretages nogle ændringer:
```
git checkout master
git pull
drush pull-prod
```

## Regel 2 - Git
Foretag alle opdateringer i en hotfix branch.

    git checkout –b hotfix/[name]

## Regel 3 - Opdatering
Opdatér Drupal med drush.

    drush up drupal

## Regel 4 - Dokumentation
Opdatér changelog med ændringer.

## Regel 5 - UPDATE-README.md fil
Undersøg om projectets document root indeholder en UPDATE-README.md fil med yderligere projektspecifikke instrukser i forbindelse med updates. Udfør i så fald disse instrukser.

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
Når testansvarlig har godkendt opdateringen er den klar til release. Fra local document root:
```
git checkout develop
git merge –no-ff hotfix/[name]
git push develop
git checkout master
git merge –no-ff hotfix/[name]
git push master
git tag [version number]
git push origin [version number]
```

Slet hotfix branch:

Remote:

    git push -d origin hotfix/[name]

Lokalt:

    git branch -d hotfix/[name]

Fra prod document root:
```
git fetch –-tags
git checkout [version number]
```

Opdatér db:

    drush updb


Opdatér sprogpakker:
```
drush l10n-update-refresh
drush l10n-update
drush cc all
```