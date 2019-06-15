#Instalation of I2C LCD to show time and date.

First be sure to have the latest updates
`sudo apt-get update && dist-upgrade -y`

Now instal recuired libraries
`sudo apt-get install python-pip python-dev build-essential
sudo pip install RPi.GPIO
sudo apt-get install python-imaging
sudo apt-get install python-smbus i2c-tools`

Activate I2C
`sudo raspi-config`
Choose option 9 **Advanced Options**
Choose option A6 **I2C**
Activate and exit

Next type
sudo nano /etc/modules
and add the following lines at the end of the file
`i2c-bcm
2708i2c-dev`

Now create i2c_lib.py
`sudo nano i2c_lib.py`
And copy/past the content to it.
Save and exit

Reboot
`sudo reboot`

Detect the display
`sudo i2cdetect -y 1`

Create lcddriver.py
`sudo nano lcddriver.py`
Edit **ADDRESS = 0x27** to mach your screen address from before

Create the LCD time/date script
`sudo nano LCD.py`

Test the script
`sudo python LCD.py`