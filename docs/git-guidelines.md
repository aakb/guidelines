# Guidelines til git og release workflow

**Metodeansvarlig:** Martin Yde Granath

## Overordnet formål
At beskrive vores arbejde med releases og Git flow

## Afgrænsning af metode
Indeholder de generelle regler for anvendelse af git på projekter. Forholder sig ikke til eventuelle projekter der måtte afvige fra standarden.

## Regel 1
Vi anvender gitflow som ramme for vores arbejde med releases.
* [A successful git branching model (Blog)](http://nvie.com/posts/a-successful-git-branching-model/)
* [Workflow description (sketch)](../../assets/git-workflow-gitflow.png)

## Regel 2
Commitbeskeder har formatet:

	[Jira-task-issuenumber]: Beskrivelse af committed kode

Eksempelvis:

    ITK-123: Added ITK stuff

* Det faste format sikrer at der oprettes en reference til det pågældende commit i JIRA
* Forsøg for så vidt muligt at anvende keywords: "Added", "Removed", "Changed", "Updated", "Fixed" for at afhjælpe en evt. search i gamle commitbeskeder.
* Skriv beskeder i det grammatiske format kort tillægsform så det antyder at det er blevet tilføjet tidligere.

## Regel 3
* Alle projekter skal have en Master og en Develop branch ved oprettelse af nye repositories. (Kan foretages i Github UI eller pushes fra lokalt miljø)
* Default branchen skal være Develop (Kan foretages i Github UI eller pushes fra lokalt miljø)
* Ved oprettelse af nye projekter på Github skal projektets beskrivelsesfelt udfyldes.

## Regel 4
* Ved navngivning af tags anvender vi navngivningsprincipperne fra ”Semantic Versioning” [http://semver.org/](http://semver.org/)
* Vi anvender ikke v foran vores versionsnumre.


