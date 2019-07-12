#!/bin/bash
logname=load
echo -n $(date) >> /home/osmc/monitoring/logs/$logname.log
echo -n ";" >> /home/osmc/monitoring/logs/$logname.log
sudo w | head -1 >> /home/osmc/monitoring/logs/$logname.log

