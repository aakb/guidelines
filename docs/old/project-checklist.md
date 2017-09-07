# Project checklist

This is a project checklist, with things we should consider in all
projects. Feel free to add to this list.

## Favicon

This should be a minor task as long as the site/system has some kind
of identity. We should consider making favicons for all devices and
have an easy guide for doing so.

## Memcached

Is it configured? Should we use it?

## Varnish

Is it configured? Should we use it?

## Google Analytics

Should we use it?

## Site Improve

Should we use it?

## Browser-/device optimization

What browsers and devices are relevant? How and who (the customer) should test?

## PageSpeed Tools

What does [PageSpeed](https://developers.google.com/speed/pagespeed/)
have to say about our site/system?

## Google Webmaster Tools & sitemap

Should we use Google Webmaster Tools and setup a sitemap?

## Backup

Is the site/system backed up?

## Domain name / DNS

Is the domain name registered and the DNS prepared for launch?

## Accessibility

Can we take measures to make sure the site/system is WCAG 2.0 compliant?

## Search engine optimization

Should we consider SEO?

## What API keys do we need

Get all API Keys required for the project

## What site email Address

Get the customers site email adress, for receiving notifications.

## Social media

What social media integrations does the customer want.

## User roles

What kind of permission hierarchy shall the site reflect?
(Admin/Editor/Blog editor) One role for all?

## GitHub (code repository in general)

Do we have the right branches in place? And tags? And version numbers?

## Readme(s)

Are all readmes updated? Do they have the necessary info to allow a
new developer to start working on the project?

## Drupal

* Enable page cache, block cache, JS minify, CSS minify etc.
* Disable update
* Disable dblog
* Enable syslog + syslog config
* Memcache conf (settings.php)
* Fast 404 page
* Fast file not found (no need to bootstrap drupal)

## Symfony

* Is doctrine configured for production? Query cache on, etc?
* Are we running in prod mode
* Is app_dev access disabled
* Are we using database migrations? Are they complete? e.g. can they
  configure the schema from scratch?

## Testing

* What test setup is relevant for this project? Visual/CSS regression?
  Behat? Unit Tests? XYZ?
* Is the testing setup documented and easily accessible to new developers?
* If extra setup beyond vagrant up is necessary is properly described?

## Stack

* What is the technology stack? What are we using beyond Webserver/DB?
* Is this setup documented?

## Integrations

* What (if any) external systems do have integrations to? Are they mission critical?
* Is the interface/API for the integrations documented and described?
* Do we know who owns/maintains the external systems? Do they know
  that we have a dependency on their system?
