Disable `mediascanner2.0` because it loads my machine.  

    sudo -i
    echo "manual' > /usr/share/upstart/sessions/mediascanner-2.0.override

I am not sure that is working jet !!!


See:

http://upstart.ubuntu.com/cookbook/#disabling-a-job-from-automatically-starting

http://askubuntu.com/questions/541928/how-to-disable-mediascanner-service

http://askubuntu.com/questions/587489/what-is-the-mediascanner-service-and-how-to-avoid-getting-it-installed
