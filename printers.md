Set up printer:
--------------------------------------------------------------------------------

Settings > Printers > Add > Enter a network address 

insert printer ip address at

follow instructions, select driver

Then go to __Additional Printer Settings__ and select the printer and:

Settings > Description > set name here

Policies > Error Policy > set Abort job

Printer options > Color model > set __CMYK__
Printer options > Media source > set Cassette
Printer options > 2-Sided-Printing > set Long edge

--------------------------------------------------------------------------------

PIXMA MG6150 - Support - Download drivers, software and manuals - Canon UK

Same driver as PIXMA __MG6100__


https://www.canon.co.uk/support/consumer_products/products/fax__multifunctionals/inkjet/pixma_mg_series/pixma_mg6150.aspx?type=drivers&language=EN&os=Linux%20(64-bit)

Queue
http://localhost:631/jobs/


Media Printer: Cassette
Use the CUPS web interface: point your browser at http://localhost:631/jobs/ and proceed from there


Print from command line:

    lp test.pdf

Brother HL-L2350DW
--------------------------------------------------------------------------------

[Support page](https://support.brother.com/g/b/producttop.aspx?c=gb&lang=en&prod=hll2350dw_us_eu_as)

From <https://support.brother.com/g/b/downloadlist.aspx?c=gb&lang=en&prod=hll2350dw_us_eu_as&os=128>

Download __.deb__ file and 

    sudo dpkg -i hll2350dwpdrv-4.0.0-1.i386.deb 

Or, with the installer, unzip and

    sudo bash linux-brprinter-installer-2.2.2-1 HL-L2350DW
    
    Will you specify the Device URI? [Y/n] : Y
    
select the option similar to 

    12: dnssd://Brother%20HL-L2350DW%20series._ipp._tcp.local/?uuid=e3248000-80ce-11db-8000-e86f38ba701e

Note: options are like in comand `sudo lpinfo -v` see <https://askubuntu.com/a/1167686/471775>

You do not need the standard printer setup, the printer just apears in the printers list.
