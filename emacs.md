You can do:

    sudo apt-get install emacs

this will not install the latest version (se below for that) 
but is interesting to do it to get all __dependencies__ installed.

To get the latest version see here: <https://www.gnu.org/software/emacs/manual/html_node/efaq/Installing-Emacs.html>

Some dependencies I detected: 

```
sudo apt-get install libx11-*
sudo apt-get install libxaw7*
sudo apt-get install libtiff5*
sudo apt-get install giflib-tools libgif-dev libgif4
```

Then 

```
wget ftp://ftp.gnu.org/pub/gnu/emacs/emacs-24.5.tar.gz
tar -zxvf emacs-24.5.tar.gz
cd emacs-24.5/

./configure         # configure Emacs for your particular system
make                # use Makefile to build components, then Emacs

sudo make insall
```


ESS
================================================================================

You can do: 

   sudo apt-get install ess

For the __latest__ version ee <http://ess.r-project.org/index.php?Section=download>

```
wget http://ess.r-project.org/downloads/ess/ess-15.09-1.tgz 
make

sudo make install    /usr/share/emacs 

```

files are installed into  
`/usr/share/emacs`  
directory. Particularly into 
`/usr/share/emacs/etc/ess`

See detalis <http://ess.r-project.org/Manual/ess.html#Installation>




Emacs Markdown Mode
===================

Install: 

    sudo apt-get  install emacs-goodies-el

and include this lines in your `.emacs` file


```
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
```

More details at: <http://jblevins.org/projects/markdown-mode/>


Fonts
======================================

https://www.gnu.org/software/emacs/manual/html_node/efaq/How-to-add-fonts.html

http://www.emacswiki.org/emacs/SetFonts

If you are running Linux, you may be able to run `xfontsel` from a shell. This program helps you select a font.




Remove horrible backups
=======================

    mkdir ~/.emacs.d/backups

and include this line in your ´.emacs´ file.

    (setq backup-directory-alist '(("." . "~/.emacs.d/backups/"))) ;backupfiles will be saved in the directory 
   
This will redirect all backups to the created folder


Emacs templates
===============


Python mode
===============

    sudo apt-get install python-mode

then a py-shell command is available in Emacs 
