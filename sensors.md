


From <https://askubuntu.com/questions/15832/how-do-i-get-the-cpu-temperature>

```
sudo apt-get install lm-sensors 
sudo sensors-detect
sudo service kmod start
```

Then:

    sensors



To see HDD temperature
--------------------------------------------------------------------------------

From <https://askubuntu.com/questions/15832/how-do-i-get-the-cpu-temperature>


     sudo apt-get install hddtemp

Then:

    sudo hddtemp /dev/sda
