#!/bin/bash
#Print logo (facoltative)
cat logo
#Print timestamp and user
echo "$(date)" @ "$(hostname)"
echo "_______________________"
#Print CPU temperature
temp=$(</sys/class/thermal/thermal_zone0/temp)	#Grep CPU temperature
echo "The CPU temperature is: ""$((temp/1000))""'C"
echo "_______________________"
#Print disks usage
df
echo "_______________________"
#Print users online
echo "Users online"
w
echo "_______________________"
#Print connections established
netstat -atupen | grep ESTABLISHED
