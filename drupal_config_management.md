#Drupal configuration management (CMI)

##Links

Two blog posts explaining the challanges on a distribution setup. And the distribution initiative on Drupal.org.

* [Distributions part 1 & 2](http://chocolatelilyweb.ca/blog/drupal-8-configuration-management-what-about-small-sites-and-distributions)
* [Drupal.org on distributions](https://www.drupal.org/node/2414523)

###About the storage APIs
Understanding the storage APIs could help the config export/import process.

* [Distributions part 1 & 2](https://www.chapterthree.com//blog/principles-configuration-management-part-one)

###Nuvole.org has a blog about cmi workflow
Read this to understand some of the tools we could use to simplify the process.

* [Configuration with features](http://nuvole.org/blog/2015/apr/27/drupal-8-configuration-management-features)
* [Git workflow med konfiguration](http://nuvole.org/blog/2014/aug/20/git-workflow-managing-drupal-8-configuration)

###Other relevant links from drupal.org

* [About the configuration override system](https://www.drupal.org/node/1928898)
(useful for static config on prod that should differ from dev environments)

* [About hook\_update\_N() function](https://www.drupal.org/node/2535316#update-hook) (Relevant when updating existing config)

##Om Drupal CMI
CMI er fokuseret imod at oprette et stabilt staging <-> prod miljø.
I udgangspunktet er tanken at man stager sin konfiguration på et site der er en kopi af produktion, eksporterer konfigurationen og committer til versions kontrol og henter det på prod. For at få stabiliseret denne process har man besluttet at konfiguration der importeres skal ejes af sitet og ikke seperate moduler. Herved lettes opgaven med at sikre afhængigheder og sammenhænge på tværs af de forskellige funktioner i Drupal.

Fordi man har fokuseret på et staging setup bliver et distributionssetup betragteligt mere komplekst, og kræver understøttelse fra en række contrib moduler.


###Udfordringer
- Hvad skal være i konfiguration, hvad gør vi når slutbrugere ændrer konfigurationsindstillinger i databasen?

- Hvad gør vi når konfiguration ikke ejes af moduler men af sitet?