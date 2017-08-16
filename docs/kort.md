# Kort

**Metodeansvarlig**: Mikkel Ricky

**Overordnet formål**: Ikke-teknisk beskrivelse af ITK's kortløsninger.

**Afgrænsning af metode**: Overordnet beskrivelse af kortløsninger som
ITK tilbyder. Tekniske detaljer vil ikke blive beskrevet i dette
dokument.

## ITK's kortløsninger

Alt efter projekt og opgave bruger vi forskellige kortløsninger:

1. Til simple visningsformål bruger vi [CARTO](https://carto.com/) som
   gør det nemt for (tekniske) brugere at lave visninger af kortdata.
2. Til (større) projekter med særlige krav laver vi skræddersyede
   løsninger baseret på fx Carto,
   [OpenLayers](https://openlayers.org/) eller
   [OpenStreetMap](https://www.openstreetmap.org/).

### CARTO

Givet en fornuftigt datakilde der indeholder geografiske data,
dvs. længde- og breddegrad eller polygoner, kan data importeres i
CARTO hvorefter [(CARTO) Builder](https://carto.com/builder/) kan
bruges til at lave flotte og illustrative kortvisninger. Kortet kan
garneres med diverse
"[widgets](https://carto.com/learn/guides/widgets/exploring-widgets)"
som fx gør det muligt for websitebrugeren filtre og søge i det viste
data.

En person med teknisk snilde, men som ikke nødvendigvis er programmør,
kan nemt lave tilpasninger i Builder og designe den ønskede
præsentation af data.

#### Visning af kort fra CARTO

Kort designet i Builder kan efterfølgende indsættes på en webside via et
`iframe`-element der viser kortet som det er designet i Builder.

Man kan også indsætte kort fra CARTO via JavaScript, men så får man
kun rå kortdata, dvs. widgets mm. vises ikke automatisk.

### Skræddersyede løsninger

@TODO
