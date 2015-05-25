#!/bin/bash

timeout=120
rsa=1024
remote_ip=150.158.232.208

for i in `seq 1 10`; do
	timeout ${timeout} openvpn --config client_${i}_${rsa}.ovpn --verb 2 --remote ${remote_ip} &
done
