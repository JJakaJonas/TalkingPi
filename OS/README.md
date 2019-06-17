# Auto update the Pi system

## Create the update script

    sudo nano update.sh

Add the text from Update.sh

save and exit

make the shell script executable using the following command:

    sudo chmod +x update.sh

## Setup cron

Optional: Create a folder to store a running log file for when this runs every week.

(This log folder and the file created below can be anything you want to name it and in any location)

    sudo mkdir /logs

This will create a new folder or directory in location you're at (i.e. /home/pi/logs/).

To make the entry to cron, we will need to add the following to the crontab file using the following command and selecting option 2:

    crontab -e

The cron job will look similar to what is below. This depends on if you
want a log file created after each run (remove '>/home/pi/logs/cronlog')This will run once a week on Monday at midnight. To create the cronlog file, just enter the following (you may need to use sudo):

    touch /logs/cronlog

Add the following line at the bottom and save (ctrl X, Y and enter):

    0 0 * * 1 sh /home/pi/update.sh 2>/home/pi/logs/cronlog

The 2> redirects all output to the file so that you will have a complete log.
