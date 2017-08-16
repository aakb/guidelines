# Design - Sketch

## Information

__Metodeansvarlig__: Jesper Pedersen (pejes@aarhus.dk)

__Overordnet formål__: Vejledning til opbygning af designfilen.

__Afgrænsning af metode__:

## Programmet [Sketch](https://sketchapp.com/)

Sketch er et vector redigerings program til mac, der er lavet med øje for desing
af brugergrænseflader. Det gør det særdeles velegnet til at designe både web og
mobil applikationer.

## Struktur

### Pages

* Der oprettes sider for hver enhedsbredde der designes til.
* Der oprettes en side til Styleguide hvor alle farver og typografier
  præsenteres.
* Der oprettes en side til Symboler
* Sider navgives med: XX_skærmstørrelse. Eks. 01_desktop-hd

### Artboards

* Der oprettes Artboards på siderne til hver enkelt præsentation af designet som
  der er behov for.
* Nye sidetyper ligges på den vandrette akse og varianter af samme sidetype
  ligges på den lodrette akse.
* Artboards navngives således: XX_XX-XX_Beskrivelse-af-indholdet. Eks:
  01_01-01-forside og 01_01-02-forside-blaa

### Lag

* Alle ydre lag navngives sigende. Så det er muligt at læse sides indhold. Eks.
  Blog-teaser, main-navigation, footer etc.

## Symboler

* Alle genbrugelige elementer oprettes som symboler som samles på siden Symbols.
* Alle variationer af symboler laves med Overrides.

## Plugins

Det anbefales at bruge en pluginmanager som fx.
[Sektchpacks](https://sketchpacks.com/) der giver lettere mulighed for
installation, opdatering og afinstallering.

### Craft plugin

Craft bruges til at uploade filer til InVison. Ved at bruge dette plugin kan
filer inspiceres via InVision, af fx. udviklere.

### Content generator

Pluing til hurtigt at genere demo data, så som navne, loremipsum, provil
billeder mm.

### SVGO compressor

Giver en bedre export af SVG.

### Imageoptim

Optimere automatisk exporetrede billeder (Billeder markeret som export til web)

### Unsplash It

Indsætter automatisk et billeder fra [Unsplash.it](https://unsplash.it)
