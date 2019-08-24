Some useful tools to handle PDFs
=================================

    sudo apt-get install pdftk pdfposter xournal
    sudo apt-get install pdfchain
    sudo apt-get install poppler-utils


Some applications
-----------------

Convert to a4

    pdfposter ENTRADA.pdf  SALIDA.pdf

----

Merge pdfs:

    pdftk doc1.pdf doc2.pdf doc3.pdf cat output combinado.pdf

__NOTICE__ the `cat output`

----

Extract just some sheets:

    pdftk entrada.pdf cat 2-3 output salida.pdf
    pdftk entrada.pdf cat 30-end output salida.pdf


Reorder:

    pdftk in_file.pdf cat 1-14 19-22 15-17 output out_file.pdf


Extract meta-information:

    pdftk doc.pdf dump_data

----

Insert scanned __signature__ into a pdf document:

1. open with `xournal mydoc.pdf` (or file open)
1. go to __image__ in the menu
1. click on the document and a _file select_ popup will appear
1. select your signature (png works fine for me)
1. arrange the signature in the document
1. Save as pdf: File > Export to PDF

----

reduce pdf size:

    pdf2ps big.pdf tmp.ps
    ps2pdv tmp.ps small.pdf

----

find fonts [from](http://ask.xmodulo.com/check-which-fonts-are-used-pdf-document.html):

    pdffonts doc.pdf


Install fonts
===================================================

<https://linuxconfig.org/how-to-install-fonts-on-ubuntu-18-04-bionic-beaver-linux>

    sudo apt -y install font-manager

