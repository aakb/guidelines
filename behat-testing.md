ITK Design - Testing guidelines (Behat/Drupal)
==========

These are *guidelines*, and if you think it's necessary to deviate feel free to do so, **but** please be sensible and do this only because it's necessary.

Please read/be familiar with:
* [Behat](http://docs.behat.org/en/v2.5/)
* [Mink](http://mink.behat.org/en/latest/index.html)
* [Drupal Extension to Behat and Mink](https://behat-drupal-extension.readthedocs.org/en/3.0/index.html)

For a quick overview of installing and running Behat tests on Drupal see:
* [Up and Running with Behat, Drupal, & Vagrant](http://kevinquillen.com/bdd/2014/06/06/behat-drupal/)
* [Basic behavior testing with Behat in Drupal](http://kevinquillen.com/bdd/2014/06/08/your-first-behat-test/)

Setup
------------

Your vagrant machine should have Selenium, Behat, Behat Drupal Extension and a headless Firefox installed. If not, the bootstrap 
script for aakb/dokk1 can be used as reference for installing/updating your vagrant box. 

To start Selenium vagrant ssh in a seperate terminal and type 'sel-start'. Wait a few seconds for the "INFO - Selenium Server 
is up and running" message to appear. To confirm selenium is running visit http://vm-name.vm:4444/wd/hub/session in a browser - 
it should give you json response.

Once the Selenium server is running you can run the tests from the sites/all/tests directory. In a different terminal 
vagrant ssh and cd to the test directory. Run the tests by typing "behat".



Gotcha's specific to the Behat Drupal Extention
------------

* If you see unexpected errors in your tests run 'drush updb' to ensure schema is up to data.
* If you see unexpected login errors in your tests make sure that the user role you are testing has the "Use the administration toolbar" permission. 
  The Drupal Behat Extension looks for "Log out" text on the page to check if the user is logged in, if the theme/site you're testing doesn't 
  show by itself this the admin toolbar is required to make the tests work.
