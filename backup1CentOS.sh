#!/bin/bash


##rsync command to create backups of /etc, /home, /root and /var directories
##save it to new backups directory

sudo rsync -avz /etc /home/lindsayg/backups/etc_backup.gz
sudo rsync -avz /home/lindsayg/scripts /home/lindsayg/backups/home_scr_backup.gz
sudo rsync -avz /var /home/lindsayg/backups/var_backup.gz
sudo rsync -avz /root /home/lindsayg/backups/root_backup.gz
