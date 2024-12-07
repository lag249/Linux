#!/bin/bash

#uses diff to see difference between /var/log directory and the copy, /var/log2
#test to see if its running
echo "Script started $(date)" >> /home/lag/checkdiff.txt

diff -q  /var/log/ /var/log2 >> /home/lag/checkdiff.txt
