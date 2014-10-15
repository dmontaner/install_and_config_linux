Add New Mime Types
==================

For __R__ scripts:

    mkdir -p ~/.local/share/mime/packages
    cd ~/.local/share/mime/packages
    touch text-R.xml

Create the [text-R.xml](mime_types/text-R.xml) and then run: 

    update-mime-database ~/.local/share/mime


For __Rmd__ scripts:

    mkdir -p ~/.local/share/mime/packages
    cd ~/.local/share/mime/packages
    touch text-Rmd.xml

Create the [text-Rmd.xml](mime_types/text-Rmd.xml) and then run: 

    update-mime-database ~/.local/share/mime

----

Taken from:  
<https://wiki.archlinux.org/index.php/Default_Applications#Custom_file_associations>


Something else is here:  
<https://help.ubuntu.com/community/AddingMimeTypes>


