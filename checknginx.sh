#!/bin/bash
logname=nginx
results=$(sudo systemctl status nginx|grep Active:)
echo -n $(date) >> /home/osmc/monitoring/logs/$logname.log
echo -n ";" >> /home/osmc/monitoring/logs/$logname.log
echo -n $results >> /home/osmc/monitoring/logs/$logname.log
echo -n ";NETSTAT PORT 80 LISTEN COUNT:" >> /home/osmc/monitoring/logs/$logname.log
results=$(sudo netstat -tulpen|grep 80|grep -i nginx|grep -i listen|wc -l)
echo $results >> /home/osmc/monitoring/logs/$logname.log
