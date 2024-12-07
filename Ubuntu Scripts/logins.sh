#!/bin/bash

echo -n "Start date: (e.g., Sept 1): "
read start

echo -n "End date: (e.g., Sept 30): "
read end

echo $start

last | grep -v /var/log/auth.log | while read line
#	do
#	date='date -d "$(echo $line | awk '{ printf $5" "$6" "$7 }')" +%s'
#	[[ $date -ge 'date -d "$start 00:00"  +%s' && $date -le  'date -d "$end 23:59" +%s' ]] && echo $line
#	done
#

