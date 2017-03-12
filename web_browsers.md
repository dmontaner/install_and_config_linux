Install Chrome (Google)
=======================

    sudo apt-get install chromium-browser
    
Pluging fro hangouts:

Download from <https://www.google.com/tools/dlpage/hangoutplugin/download.html> and:
    
     sudo dpkg -i google-talkplugin_current_amd64.deb 



Install Firefox
===============

    sudo apt-get install firefox



TiddlyFox extension for Firefox
-------------------------------

A Firefox extension to enable TiddlyWiki to save changes directly to the file system.

Install <https://addons.mozilla.org/en-US/firefox/addon/tiddlyfox/>

Dictionary
----------

    Rigth button > Languages > Add Dictionaries

This will take you to the Firefox Add-ons page.

Flash
------


From http://ubuntuhandbook.org/index.php/2014/04/install-adobe-flash-in-ubuntu-14-04-lts/

Software & Updates” >>> Other “Software” tab >>> Canonical

    sudo apt-get update
    sudo apt-get purge adobe-flash{plugin,-properties-gtk}
    sudo apt-get install flashplugin-installer
