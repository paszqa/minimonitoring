#!/bin/bash
logname=disk
echo -n $(date) >> /home/osmc/monitoring/logs/$logname.log
echo -n ";" >> /home/osmc/monitoring/logs/$logname.log
sudo df -m|grep -i /dev/mmcblk0p7 |awk '{print $5}' >> /home/osmc/monitoring/logs/$logname.log

