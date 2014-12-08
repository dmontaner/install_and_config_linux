Some useful tools to handle PDFs
=================================

    sudo apt-get install pdftk pdfposter 


Some applications
-----------------

Convert to a4

    pdfposter ENTRADA.pdf  SALIDA.pdf

----

Merge pdfs:

    pdftk doc1.pdf doc2.pdf doc3.pdf cat output combinado.pdf

___NOTICE__ the `cat output`

----

Extract just some sheets:

    pdftk entrada.pdf cat 2-3 output salida.pdf
    pdftk entrada.pdf cat 30-end output salida.pdf


Reorder:

    pdftk in_file.pdf cat 1-14 19-22 15-17 output out_file.pdf


Extract meta-information:

    pdftk doc.pdf dump_data
