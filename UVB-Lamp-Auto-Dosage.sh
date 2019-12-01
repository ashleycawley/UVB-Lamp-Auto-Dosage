#!/bin/bash

# Notes: A script to control and automate a UVB Lamp to administer an even and calculated
#	 dosage throughout the course of the day. Triggered by motion (senses when person
#	 is at the desk).

# Author: Ashley Cawley // ash@ashleycawley.co.uk // @ashleycawley

# Variables
# TIMEOUT is the period of time between dosage/exposure.
TIMEOUT="9000"	### 1hr=3600 // 2hrs=7200 // 9000=2.5hrs // 3hrs=10800
DOSAGE="900"	### 5mins=300 // 10mins=600 // 15mins=900
PIR_POLL_RATE="5"

# Functions
function READ_PIR_FOR_MOTION_SENSE {
	MOTION_SENSE=(`gpio read 7`) # Saves it into a variable
}
# Main Script

while [ "Alan Turing" == "Alan Turing" ]
do
	sleep $PIR_POLL_RATE
	READ_PIR_FOR_MOTION_SENSE

	if [ $MOTION_SENSE == "1" ]
	then
		gpio export 5 out # Primes GPIO Pin for DC Relay
		sudo sh -c "echo '1' > /sys/class/gpio/gpio5/value" # Triggers DC Relay
		sleep $DOSAGE # Administers dosage of UVB light
		sleep $TIMEOUT # Allows timeout period before next dosage
	fi
done
