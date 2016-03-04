my timer

    sudo apt-get install alarm-clock-applet

You can use [zenity](http://manpages.ubuntu.com/manpages/trusty/man1/zenity.1.html) for a more evident stop window:

- Start application > custom comand
- An then:

    zenity --error --width=500 --height=300 --html --text="Se acabo el tiempo" --title="Timeout"

See here for more [notifications](http://unix.stackexchange.com/questions/144924/creating-a-messagebox-using-commandline)

----

http://alarm-clock.pseudoberries.com/
