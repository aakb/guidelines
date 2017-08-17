# Guidelines til ITKs packagist

**Metodeansvarlig:** Martin Yde Granath

## Overordnet formål

At beskrive anvendelsen af vores packagist

## Regel 1

Vi anvender en ITK package manager til php komponenter der kan genbruges imellem
projekter. Ofte vil dette være et drupal modul eller en symfony pakke.

[http://packagist.etek.dk](http://packagist.etek.dk)

## Regel 2

Moduler der skal anvendes som composer pakke skal indeholde en composer.json fil
som definerer pakken.

Eksempelvis:

```json
{
  "name": "drupal/itk_cookie_message",
  "type": "drupal-module",
  "description": "Provides a cookie message block and configuration pages",
  "keywords": ["Drupal"],
  "license": "GPL-2.0+",
  "minimum-stability": "dev",
}
```

For yderligere information om en egenskaber for komponenten refereres til:
Se [https://getcomposer.org/doc/04-schema.md#properties](https://getcomposer.org/doc/04-schema.md#properties)

I forhold til Drupal bør det bemærkes at den composer.json vi anvender fra
Drupal core placerer moduler, temaer og profiler i forskellige mapper afhængig
af pakkens type.

## Regel 3

For at oprette en ny pakke skal en bruger tilføjes og have de rigtige
rettigheder. Herefter kan man tilføje pakken (submit) ved at referere til et
offentligt repository (Eksempelvis git).

## Regel 4

Personen der har oprettet komponenten har ansvaret for dens vedligeholdelse.
Man kan som site administrator tilføje/fjerne CO-maintainers. Hvis en
medarbejder forlader organisationen skal ansvaret for medarbejderens pakker
overdrages til andre medarbejdere så der sikres fortsat vedligeholdelse.