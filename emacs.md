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

