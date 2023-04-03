nsh> cat /fs/microsd/etc/extras.txt
set +e
mavlink start -x -u 14550 -o 14540 -r 200000 -t 10.0.0.10 -m onboard
set -e
nsh> ipconfig
nsh: ipconfig: command not found
nsh> ifconfig
eth0    Link encap:Ethernet HWaddr 5a:18:80:10:00:17 at UP
    inet addr:10.0.0.2 DRaddr:10.0.0.1 Mask:255.255.255.0

nsh> mavlink start -x -u 14540 -o 14550 -r 200000 -m onboard -n inet


mavlink start -x -u 14550 -o 14550 -t 10.0.0.1 -r 57600 -m onboard -n inet 
mavlink stream -u 14550 -r 50
