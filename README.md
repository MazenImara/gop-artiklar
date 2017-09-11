# Kopernikus 2

This is the installation profile for Drupal 8 sites for Storleden. It currently has the working name "Kopernikus 2", but when a name is set all the machine names and texts and everything need to be updated.

## Local environment

* Clone the repo on your local machine. Better use Linux, otherwise you have to figure out how to make everything work on Windows.
* Set up Apache to point to the new project.
* Creade a (mysql) database and user for the site.
* Run `composer install` in docroot to download Drupal and all contrib modules and libraries.
* Go to the url you set up in Apache and proceed with the Drupal installation.
* Cog is used as base theme, which relies on Gulp, so run the `setup_gulp.sh` script to set up everything needed for Gulp. Make sure that there are no errors, and note the recommendation printed at the end of the script. It could be a good idea to examine the script to understand what's being done, and possibly read some online documentation about Cog. 
* Go to web and `drush cr`.
* Start developing!

## Development

* Use `composer require` and `composer install` to download contrib modules and libraries.
* Write machine names and texts in English and provide translations to Swedish in .po files.
* Do not work in master, but create new branches for new things, push them to Bitbucket, have them reviewed when appropriate, and only after that merge them into master.
* General configuration settings go in profiles/custom/kopernikus2/config/install
* Modules that should always be installed are added as dependencies in profiles/custom/kopernikus2/kopernikus2.info.yml
* Modules and other settings that are selectable/configurable at install go into modules in the profile installation, so a setting could be put in profiles/custom/kopernikus2/modules/my_module/comfig/install/
* Since this is an installation profile, no yaml files should contain uuid or hashes.

## Usage

* The purpose of the installation profile is to be able to quickly set up a simple site for a customer, where we select what packages should be installed at installation time and with a working basic design. Only a minimum of configuration and design should be needed afterward.
* Another usage is to use it as a base to set up a local environment when we build a more complex site, and then start building/configuring the rest of the site from there.