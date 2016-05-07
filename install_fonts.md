Notes from <https://wiki.ubuntu.com/Fonts>

There are various locations in GNU/Linux in which fonts can be kept. 
These locations are __defined__ in `/etc/fonts/fonts.conf`
standard ones include 

- /usr/share/fonts
- /usr/local/share/fonts
- ~/.fonts

Create a new sub dir and copy the __TTR__ archives there. 

Sometimes you may ned to run: 

    sudo fc-cache -f -v

(I did not need this anytime)

Reload teh program you are using
