# Fogbugz Guidelines

Dette er et sæt guidelines for hvordan vi i ITK benytter Fogbugz til styring af projekter.

## Projekter

Når et projekt oprettes navngives det med et sigende navn f.eks. __[kunde] - [projekt]__.

* Primary contact sættes til _unassigned_ for at undgå unødvendige email notifikationer.
* Som workflow vælges _Default Workflow_
* Tilføj altid en _Product backlog_ milestone (Bør være til stede som standard, men check)
* Dernæst oprettes milepæle for hvert sprint som projektet er planlagt til. Er dette endnu ikke beluttet når projektet oprettes ventes med oprettelse.
 * Sprint milepæl navngives efter: _Sprint Backlog - ugenr./ugenr._
* for et projekt oprettes også _areas_ som er et udtryk for det hovedområder projektet består af. Det kan f.eks. være Blog, Udviklingsmiljø eller Søgning.


## Case oprettelse

En case oprettes under det projekt opgaven tilhører og meta data tilføjes.
Nedenfor er de vi ønsker tilknyttet på en case.

### Primære Tags:

Vi benytter tags til at kategorisere hvilken status en opgave har. Som minimum tagges en opgave med _backlog_ hvilket tilkendegiver at opgaven er klar til at blive prioriteret.

* __backlog__
 * -> opgaver som er i backlog.
* __sprint__
 * -> opgaver som er planlagt til igangværende sprint.
* __nextsprint__
 * -> opgaver som prioriteres til næste sprint.
* __supportdag__
 * -> opgaver som løses på support fredag.
* __interne opgaver__
 * -> opgaver som ikke kan relateres til en kunde.
* __faktureres__
 * -> opgaver som er lukket og skal faktureres.

### Milepæle:

Milepæle benyttes til at planlægge sprints den relevante milepæl tilknyttes.
Vi har to standard milepæle:

* Undecided
* Product Backlog

Yderligere vil vi have en milepæl for de enkelte sprints så opgaver kan prioriteres længere frem i tiden.

* Sprint Backlog - ugenr./ugenr.

###Status:

For at simulere et scrumboard benytter vi 4 aktiv status for en case. Når du igangsætter arbejdet på en case opdatere du til _Active (Doing)_ og når du afslutter arbejdet ændre du til _Active (To test)_ for at indikere at opgaven er klar til test. Påtager du dig at test en opgave ændre du til _Active (Ready to ship)_ hvis testen er positiv. Når en opgave er deployet til stage eller produktion lukkes denne med _Resolved_.

Som udgangspunkt tester man ikke egne opgaver, men som med alt er der undtagelser og du kan selv varetage hele processen. Dog vil nogle opgave typer kræve at en anden tester. Det må bero på en vurdering af dig som udvikler/projektleder.

* Active
 * -> opgaver som ikke er igangsat.
* Active (Doing)
 * -> opgaver som der arbejdes på.
* Active (To test)
 * -> opgaver som er klar til at blive testet.
* Active (Ready to ship)
 * -> opgaver som er klar til deploy på stage eller produktion.


### Kategorier:

En opgave tildeles yderligere en kategori for at indikere hvilken type af opgave der er tale om. Som oftest vil en opgave være enten en feature eller en design opgave.

* Bug
* Critical bug
* Feature
* Design
* Code Review
* Support
* Project Management
* Inquiry
* Schedule Item

### Area:

Area vil altid være projektafhængig, her vælges det projektområde som opgave hører under. Er det f.eks. en opgave som relatere sig til blog feature så vælges dette område, eller er det vedr. søgning vælges dette.

Areas defineres på projektet og kan f.eks. være:

* Misc
* Design
* Development
* Project Management

### Estimat:

Alle opgaver gives et estimat. Er opgave ikke estimeret på forhånd gøres dette, om det kræver input fra andre udviklere er op til egen vurdering.

## Workflow

* Når en opgave påbegyndes opdateres status.
* Når en opgave afsluttes opdateres status og en evt. beskrivelse tilføjes.
* Opgaven tildels en person hvis det vides hvem der skal løse denne, ellers unassigned.
* Er en opgave helt afsluttet lukkes denne og tagges _faktureres_. Opgaven tildeles blot _unassigned_

## Tidsregistrering

* Tidsregistrering foretages på alle opgaver man arbejder på.
