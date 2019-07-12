#!/bin/bash
logname=mem_kodi
echo -n $(date) >> /home/osmc/monitoring/logs/$logname.log
echo -n ";" >> /home/osmc/monitoring/logs/$logname.log
#sudo w | head -1 >> /home/osmc/monitoring/logs/$logname.log
results=$(sudo ps -o pid,user,%mem,command ax | sort -b -k3 -r|grep -i kodi.bin|grep -iv  LIRC_SOCKET_PATH|grep -iv grep|awk -F' ' '{print $3}')
echo $results >> /home/osmc/monitoring/logs/$logname.log
