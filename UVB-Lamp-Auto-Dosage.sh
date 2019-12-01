#!/bin/bash

# Notes: A script to control and automate a UVB Lamp to administer an even and calculated
#	 dosage throughout the course of the day. Triggered by motion (senses when person
#	 is at the desk).

# Author: Ashley Cawley // ash@ashleycawley.co.uk // @ashleycawley

# Variables
# TIMEOUT is the period of time between dosage/exposure.
TIMEOUT="9000"	### 1hr=3600 // 2hrs=7200 // 9000=2.5hrs // 3hrs=10800
DOSAGE="900"	### 5mins=300 // 10mins=600 // 15mins=900


# Functions

# Main Script

##### SUDO CODE #####
### Loop to sense motion

## When motion detected:

## turn on lamp

## Wait for DOSAGE period to pass

## Turn off lamp

## Wait for TIMEOUT period to pass

## Return to top of loop continually checking for motion

##### / SUDO CODE #####
