#!/bin/bash
sudo modprobe -a ib_uverbs mlx5_core mlx5_ib
ip addr add 10.10.10.221/32 dev enp94s0f0np0
ifconfig enp94s0f0np0 mtu 9000
ifconfig enp94s0f0np0 up

ip route add 10.10.10.0/24 dev enp94s0f0np0
arp -i enp94s0f0np0 -s 10.10.10.201 04:3f:72:a2:b4:a2
#arp -i enp94s0f0np0 -s 10.10.10.222 04:3f:72:a2:c5:32

#ping -c 3 10.10.10.222  # switch vm

ibv_devinfo
