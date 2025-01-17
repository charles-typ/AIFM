#!/bin/bash
sudo modprobe -a ib_uverbs mlx5_core mlx5_ib
ip addr add 10.10.10.201/32 dev ens8f0
ifconfig ens8f0 mtu 9000
ifconfig ens8f0 up

ip route add 10.10.10.0/24 dev ens8f0
arp -i ens8f0 -s 10.10.10.221 04:3f:72:a2:b7:3a
#arp -i ens8f0 -s 10.10.10.222 04:3f:72:a2:c5:32

#ping -c 3 10.10.10.222  # switch vm

ibv_devinfo
