Install Chrome (Google)
================================================================================

Download `.deb` from 
https://www.google.com/chrome/browser/thankyou.html?platform=linux
and:

    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt-get install -f

or from repos: 

    sudo apt-get install google-chrome-stable


Install Chromium
================================================================================

    sudo apt-get install chromium-browser
    
Plugging for hangouts:

Download from <https://www.google.com/tools/dlpage/hangoutplugin/download.html> and:
    
     sudo dpkg -i google-talkplugin_current_amd64.deb
     sudo apt-get install -f



Install Firefox
================================================================================

    sudo apt-get install firefox



TiddlyFox extension for Firefox
-------------------------------

A Firefox extension to enable TiddlyWiki to save changes directly to the file system.

Install <https://addons.mozilla.org/en-US/firefox/addon/tiddlyfox/>

Dictionary
----------

    Right button > Languages > Add Dictionaries

This will take you to the Firefox Add-ons page.

Flash
------


From https://vitux.com/how-to-install-adobe-flash-player-on-ubuntu/

    sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
    sudo apt-get update
    # sudo apt-get purge adobe-flash{plugin,-properties-gtk}
    sudo apt-get install flashplugin-installer

Test and activate at: https://helpx.adobe.com/flash-player.html

https://www.mozilla.org/en-US/firefox/organizations/



Lynx
================================================================================

    sudo apt-get install linx

See <http://lynx.browser.org/>
