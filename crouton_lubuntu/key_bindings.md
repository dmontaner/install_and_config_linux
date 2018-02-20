
Bind `search` key to `Cap_Loc`
--------------------------------------------------------------------------------

From:  
<https://askubuntu.com/questions/33774/how-do-i-remap-the-caps-lock-and-ctrl-keys/33788#33788>

1. Use `xev` to find the keycode (133 in my Acer)

2. Edit (or create) the file ~/.Xmodmap and include the line:
   `keycode 133 = Caps_Lock NoSymbol Caps_Lock`
   
3. Load the file doing:
   `xmodmap .Xmodmap`
   
4. In Lubuntu, step 3 needs to be done every time we log in.  
   But you can set it as an __autostart__ application:  
   Copy these lines to file  `~/.config/autostart/search_to_cap_lock.descktop` : 

   ```
   [Desktop Entry]
   Type=Application
   Name=Cap Lock autostart
   Comment=Change search key into cap lock
   NoDisplay=true
   Exec=sh -c 'xmodmap /home/dmontaner/.Xmodmap'
   NotShowIn=GNOME;KDE;XFCE;
   ```
   See:  
   <https://askubuntu.com/questions/81383/how-can-i-add-new-autostart-programs-in-lubuntu>



See also: 

- <https://cweiske.de/howto/xmodmap/ar01s06.html>
- <https://askubuntu.com/questions/54157/how-do-i-set-xmodmap-on-login>
- <https://askubuntu.com/questions/48321/how-do-i-start-applications-automatically-on-login>
