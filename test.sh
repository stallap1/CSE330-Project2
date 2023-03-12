#!/bin/bash
export num=$1
echo $num > var
name="test_cse330"
home=$(whoami)
sudo useradd $name
sudo passwd -d $name
uid=$(id -u $name)
make clean
make all
echo "Test script will start $num processes for the user $uid"
sudo su $name -c ./process_gen/process_generator &
sleep 10
PS_SCRIPT=`bash ps_time.sh $uid &`
let OUTPUT
OUTPUT=$PS_SCRIPT; 
echo "Test script will insert the test kernel module"
sudo insmod producer_consumer.ko uid=$uid buff_size=$2 p=$3 c=$4 && 
stty sane
echo "The test script waits 10 seconds for the kernel module to finish."
sleep 10
echo "Test script will remove the test kernel module"
sudo rmmod producer_consumer; 
echo "The following is the dmesg output"
sudo dmesg | tail -n $5; echo $OUTPUT; 
sudo pkill -u $uid; rm -rf var;
