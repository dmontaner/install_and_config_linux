Install: 

    sudo apt-get install 


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
