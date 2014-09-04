Some suefull tools to handle PDFs
=================================

    sudo apt-get install pdftk pdfposter 


Some applications
-----------------


### Convert to a4

    pdfposter ENTRADA.pdf  SALIDA.pdf


Combinar pdfs

pdftk doc1.pdf doc2.pdf doc3.pdf cat output combinado.pdf   ## IMPORTANTE EL cat output

IMPORTANTE EL cat output


Extraer solo algunas hojas

pdftk entrada.pdf cat 2-3 output salida.pdf
pdftk entrada.pdf cat 30-end output salida.pdf


Reordenar

pdftk malo.pdf cat 1-14 19-22 15-17 output genometra_protocolizacion_pacto_socios_cipf.pdf


Extraer informacion

pdftk doc.pdf dump_data
