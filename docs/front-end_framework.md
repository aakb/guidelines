# Front-end framework

## Information

__Metodeansvarlig__: Jesper Pedersen (pejes@aarhus.dk)

__Overordnet formål__: Anvendelse af Bootstrap som front-end framework

__Afgrænsning af metode__: Definere ikke arbejdsgange med nmp og gulp

## Regel 1 - Hvorfor benytte et framework

Ved at benytte et framework som for front-end udvikling, opnår vi at alle på
teamet, får et fælles udgangspunkt for opbygning af løsninger. Med bootstrap som
framework har vi et solidt funderet og vel dokumenteret udgangspunkt, som vil
kunne passe til de fleste projekter. Bootstrap indeholder mange komponenter i
sig selv, men der findes også mange
3. Parts som er skrevet direkte til brug sammen med.

## Regel 2 - Installer via npm(se front-end dokumentation [npm](npm.md)

For at opretholde fleksibiliteten ved brug af Bootstrap, installeres det ved
hjælp af npm:

`npm i bootstrap popper.js gulp -save-dev`

Herefter bygges css ud fra node_modules/bootstrap/scss/bootstrap.scss

Alle variabler der ønskes overskrevet, for at tilpasse bootstap, placeres i sin
egen fil: bootstrap-custom.scss (Se variabler i
node_modules/bootstrap/scss/_vaiables.scss)

## Byg med gulp(se front-end dokumentation [gulp](gulp.md)

Til at bygge den endlige css fil benyttes gulp, som også installeres via npm.
Alle afhænigheder i forhold til gulp, instaleres og opdateres også via npm.