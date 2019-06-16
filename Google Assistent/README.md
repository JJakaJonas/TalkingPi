# How to prepair to startup

Copy the config.txt file to the boot disk on the micro SD card

# creat google assistent

## At first boot
Follow RPi guide and reboot

## After reboot
Just to be sure run the following upgrade script
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    sudo apt-get autoremove -y
    sudo apt-get autoclean
    sudo reboot
    
## Test speaker and microphone
    /home/pi/AIY-projects-python/checkpoints/check_audio.py
    
## Get credentials 
Go to https://console.cloud.google.com/
<br> and create a new project
<br> 
<br> When created download the credentials file
<br> and open the file in a editor.
<br> Copy the text i the file
<br> Create a new file on the pi
    sudo nano assistant.json
<br> past the text, save and exit

## Start assistent demo
    cd ~/AIY-projects-python/src/examples/
    voice/assistant_grpc_demo.py
Go to the page there will be linked till
<br> and authenticate the access to use the account

## Start assistent at boot
Type in 
    cd ~/AIY-projects-python/src/examples/voice
    ./assistant_library_demo.py