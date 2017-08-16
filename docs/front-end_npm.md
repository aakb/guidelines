# Front-end - Npm

## Information

__Metodeansvarlig__: Jesper Pedersen (pejes@aarhus.dk)

__Overordnet formål__: Vejledning til brug af npm

__Afgrænsning af metode__: Forudsætter at homebrew er installeret.

## Installation

Npm bruges til at hente og vedligeholde pakker som bruges til udvikling af
løsningerne.

Installeres med `brew install node`

## Installer pakker

Kør `npm init` for at oprette en ny package.json fil til projektet. Findes der
allerede en package.json fil i projektet, installeres pakker ved at køre `npm
install`

For at tilføje en ny pakke køres `npm install _pakkenavn_ --save-dev`

For at fjerne en tidligere installeret pakke køres `npm uninstall _pakkenavn_
--save-dev`

## Package.json

For at gøre det nemt at sætte projektet op på en anden maskine, uden at skulle
have node_modules mappen i git, tilføjer og fjerner vi pakker med parameteren
`--save-dev`, som så automatisk holder package.json opdateret.