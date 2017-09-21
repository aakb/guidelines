# Behat testing guidelines

_Metodeansvarlig:_ Ture Gjørup

## Overordnet formål

Sikre at vi kan køre automatiserede tests på de vigtigste grænseflader og/eller
komponenter i systemet. Muliggøre at test er tilgængelige og læselige også for
kunder/tester og PL, mindske det manuelle test arbejde i forbindelse med udvikling
og release.

### Afgrænsning af metode

Følgende er opsat som retningslinjer for hvor vi får den bedste værdi af at bruge
behat tests, baseret på de erfaringer vi har med forskellige Symfony projekter.
Antager at Behat er opsat og konfigureret for projektet.
Antager at de enkelte tests sættes op så de opretter det indhold de afhænger af
på en clean test db.

## Ved større projekter

### Regel 1 – eksterne koblinger

Hvis systemet eksponerer et API til andre drift systemer skal API’ets funktionalitet
været dækket af tests.

**Baggrund:** Hvis der er eksterne systemer der afhænger af dette
API er det essentielt at API’et er stabilt og dækket af tests. Dette skal sikre at
denne at der kan udvikles på de to systemer parallelt og uafhængigt.

### Regel 2 – basis funktionalitet

De enkelte routes i systemet bør være dækket af en simpel test der som min. tjekker
for ”HTTP 200 OK”

**Baggrund:** Vores erfaring er at vi for ofte utilsigtet får ødelagt andre dele
af systemet ved udviklingen af nye features. Derfor er der for mange ”HTTP 500” der
slipper igennem til test hos kunden.

### Regel 3 – intern funktionalitet

De dele af systemet der indeholder forretningslogik ud over simpel CRUD
funktionalitet bør være dækket af test, f.eks. udregninger, skift af status, events,
etc.

### Regel 4 – ikke alt skal/kan testes m. Behat

Overvej kritisk om Behat er det rigtige værktøj i en given kontekst. Hvis en test
bliver kompleks, hvis det er svært at definere baggrund og resultat, hvis
sammenhængen mellem data og result er kompleks, bør man overveje om f.eks. unit
eller funktionelle tests er bedre i den konkrete situation.

## Tekniske tips

Se vores gamle [Behat guides](old/behat-testing.md) for tips til opsæting af
Behat i Drupal, PhpStorm, etc.
