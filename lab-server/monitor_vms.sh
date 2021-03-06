#!/usr/bin/env bash
# monitor_vm.bash
ports=$(cat port2stud.txt)
for port in ${ports}
do
        #vm ip range 172.16.net(1-30).vm(1-4)
        let nv=$port-5000
        let n=$nv/10
        let v=$nv-$n*10
        ip="172.16.${n}.${v}" 
        echo "PORT: $port, NETWORK: $n, VM: $v, IP: ${ip}"
        echo "Checking ${ip}"
        ssh instructor@${ip} date
done
