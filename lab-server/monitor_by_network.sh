#!/usr/bin/env bash
# monitor_vm.bash
n=$1 # network number
vms='1 2 3 4'
for v in ${vms}
do
        #vm ip range 172.16.net(1-30).vm(1-4)
        ip="172.16.${n}.${v}" 
        echo "NETWORK: $n, VM: $v, IP: ${ip}"
        echo "Checking ${ip}"
        ssh instructor@${ip} date
done
