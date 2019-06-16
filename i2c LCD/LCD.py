# Import the driver
import sys
sys.path.append("./lib")
import lcddriver
import time

# Initialize the lcd
lcd = lcddriver.lcd()

# Reset the lcd
lcd.lcd_clear()

# Display characters on each line
while True:
lcd.lcd_display_string("Time: %s" %time.strftime("%H:%M:%S"), 1)

lcd.lcd_display_string("Date: %s" %time.strftime("%d:%m:%Y"), 2)