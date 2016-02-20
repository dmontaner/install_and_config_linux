Generally in my ubuntu 10.04 installations the wifi does not recover after suspending the computer.

I found [this solution](http://ubuntuforums.org/showthread.php?t=2218043) :

    sudo touch /etc/pm/sleep.d/wakenet.sh
    sudo chmod +x /etc/pm/sleep.d/wakenet.sh
    sudo gedit /etc/pm/sleep.d/wakenet.sh

Then insert the following lines:

```
#!/bin/bash
case "$1" in
thaw|resume)
nmcli nm sleep false
pkill -f wpa_supplicant
;;
*)
;;
esac
exit $?
```
