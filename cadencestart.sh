#!/bin/bash



#Here we start jack first. This allows jack to take control of our audio interface.
cadence-session-start --start
sleep 5 


#now we just give ourselves a system message to know that our audio is up and running.
wall "Audio systems up and running"
sleep 1
exit 0