#!/bin/bash
logname=swap
echo -n $(date) >> /home/osmc/monitoring/logs/$logname.log
echo -n ";" >> /home/osmc/monitoring/logs/$logname.log
results=$(sudo free -m|grep Swap:| awk '{print $4/$2 * 100 "%"}')
echo $results >> /home/osmc/monitoring/logs/$logname.log

