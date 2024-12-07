#!/bin/bash


##rsync command to take snapshot of /etc/passwd directory
##save it to new backups directory

sudo rsync -a -v /etc/passwd  /home/lag/backups/
