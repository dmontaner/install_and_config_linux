This files and scripts are used to set up some _actions_ for the [Nemo] file manager.
Those actions will let you execute an R script in BATCH mode but using the Nemo graphical interface.

The first action uses the Linux shell command `R CMD BATCH` and will produce an `.Rout` file (besides the script results).

The two last action use [knitr::spin][spin] and [Pandoc] to create HTML or PDF log/report files.

[nemo]: http://en.wikipedia.org/wiki/Nemo_(file_manager) "Nemo at Wikipedia"
[pandoc]: http://johnmacfarlane.net/pandoc/ "Pandoc home page"
[spin]: http://www.rforge.net/doc/packages/knitr/spin.html "spin man page"
