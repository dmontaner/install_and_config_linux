


Install Arduino IDE
--------------------------------------------------------------------------------

See: <https://www.arduino.cc/en/Guide/Linux>

    wget https://www.arduino.cc/download.php?f=/arduino-nightly-linux64.tar.xz
    tar xf download.php\?f\=%2Farduino-nightly-linux64.tar.xz 
    cd arduino-nightly
    
    sudo ./install.sh 


Install ESP32 board
--------------------------------------------------------------------------------

<https://randomnerdtutorials.com/installing-the-esp32-board-in-arduino-ide-windows-instructions/>


Bus 001 Device 008: ID 10c4:ea60 Cygnal Integrated Products, Inc. CP210x UART Bridge / myAVR mySmartUSB light


As "Serial port permissions" from : https://playground.arduino.cc/Linux/All/#Permission

    ls -l /dev/ttyUSB*

crw-rw---- 1 root dialout 188, 0 Apr 19 22:58 /dev/ttyUSB0

    sudo usermod -a -G dialout dmontaner
    sudo usermod -a -G tty yourname

    sudo chown dmontaner /dev/ttyUSB0


I had to add my user to group "dialout" too (ubuntu). Logout/login required.


