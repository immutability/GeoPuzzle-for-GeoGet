# GeoPuzzle - a plugin for GeoGet

Geoget is a freeware application for all your geocaching needs.

You can find more information about GeoGet, GeoTrophy and GeoPuzzle projects as well as this plugin here:
 - GeoGet: http://geoget.ararat.cz
 - GeoPuzzle: http://geotrophy.net
 - GeoPuzzle plugin for GeoGet: http://geoget.ararat.cz/doku.php/user:skript:geopuzzle

## Summary (SK)
Doplnok ku štatistikám, ktorý umožňuje automatizovať generovanie HTML kódu pre GeoPuzzle zo stránky GeoTrophy. V súčasnosti je dostupných 20 puzzle pre hory, hrady, jaskyne, kostoly, rozhľadne a iné významné miesta v Českej republike, na Slovensku, v Maďarsku, Nemecku a Slovinsku. Puzzle "European Summits" zahŕňa významné vrcholy v celej Európe.

## Summary (EN)
This plugin automatically generates the HTML code for GeoPuzzles, designed by GeoTrophy. Currently, there are 20 puzzles covering mountains, castles, caves, churches and other special locations in Czech Republic, Slovakia, Hungary, Germany and Slovenia. The puzzle "European Summits" covers all of Europe.

## Building the plugin
The build process is automated using Apache Ant. A sample build.properties file is included if you'd like to use the deploy target. 

The following targets are available:
 - **package (default):** Creates a new production GIP package for GeoGet with proper file naming scheme (including version number) to be uploaded to GeoGet plugin repository. Depends on the *versions* target.
 - **versions:** Updates the plugin version in all applicable source files. The version should never be updated directly - this target is supposed to handle this.
 - **deploy:** Copies the current plugin files into the GeoGet scripts directory for easier testing. GeoGet will pick up the fresh version of the script file with each plugin run, so when debugging, you can just deploy as many times as you wish while GeoGet is running (no need to restart the app).
 - **getdata:** Downloads the GeoPuzzle XML files from geotrophy.net to the data directory. These data files are not a part of the plugin package itself, but may be needed for troubleshooting/development, and this target allows you to get fresh copies in a single click.
 
Note on versioning: the version number is now stored in the version.properties file. This should be modified before running the versions/package targets. Here's the sequence of steps for releasing a new version:
 1. Update  `version.properties`
 2. Run  `ant versions`  to update the version number in all source files.
 3. Run  `ant package`  to create the production GIP package to upload to ararat plugin repository.
 4. Optionally run  `ant deploy`  if you'd like to deploy the new version locally.
 5. Commit the version updates to github and tag the new release.
 
## Contributing
Do you have a bug fix or have you coded a new feature? I will be more than happy to accept your contribution. Feel free to fork the plugin code and submit a pull request, or email me if you'd like to become a project collaborator.