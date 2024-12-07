#!/bin/bash


##rsync command to create backups of /etc, /home, /root and /var directories
##save it to new backups directory

sudo rsync -avz /etc /home/lag/backups/etc_backup.gz
sudo rsync -avz /home/lag/scripts /home/lag/backups/home_scr_backup.gz
sudo rsync -avz /var /home/lag/backups/var_backup.gz
sudo rsync -avz /root /home/lag/backups/root_backup.gz
