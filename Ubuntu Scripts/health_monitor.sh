#!/bin/bash

##This script will monitor the health of the server

#This command will show  statistics related to memory, buffers and cache, swap memory, and kernel memory
printf 'The /proc/meminfo  statistics:\n'
cat /proc/meminfo | grep -e "Mem" -e "Buffers" -e "Cached" -e "Swap" -e "reclaim" -e "slab" -e "kernel";


#This command will print an aggregated view of the CPU usage
printf '\nThe mpstat details:\n' 
mpstat;

#These commands will look at the processes
printf '\nAll active system procceses:\n'
ps;

pstree;

#This command will show how long the system has been up and running
printf '\nUptime:\n'
uptime -p;

printf '\nDate and time system was last booted:\n'
uptime -s;

printf '\nSystem load average for the last 1, 5, and 15 minutes:\n'
uptime | awk -F'[a-z]:' '{ print $2 }';

now="$(date)"

printf  '\nRun on %(%F)T\n' -1

#print to terminal 
 2>&1 


