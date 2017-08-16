# Front-end - Gulp

## Information

__Metodeansvarlig__: Jesper Pedersen (pejes@aarhus.dk)

__Overordnet formål__: Retningslinjer for opsætning og brug af gulp.

__Afgrænsning af metode__:

## Generelt om gulp

Gulp bruges som preprocesser.

## Instalation og generel opsætning

Kopier gulpfile.js + package.json fra /starterkits/gulp og kør `npm install``
Rediger herefter gulpfile.js så stier og mappenavnen svare til dit projekt.

Alle requirements tilføjes øverst i filen.

Efterfølgende defineres variabler til brug i tasks.

Herefter defineres alle tasks.

## Tasks

Tasks er de opgaver som vi sætter gulp op til at køre på projekterne. Tasks kan
køres med: `gulp _taskname_`

### Scss - `gulp scss`

Scss er den task der sørger for at samle alle scss filer til en minified
produktions klar css fil.

<!-- @TODO

### Default

### Watch

### Clean

### Browser-sync

### Server

### Fonts

 -->