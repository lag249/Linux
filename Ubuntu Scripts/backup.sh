#!/bin/bash


##using tar to create backups of /etc, /home, /root and /var directories
#files will be compressed with gzip
##save it to new backups directory
cd  /etc 
sudo tar -cvpzf /home/lag/backups/etc_backup.tar.gz
cd /home/lag
sudo tar -cvpzf /home/lag/backups/home_backup.tar.gz
cd /root
sudo tar -cvpzf /home/lag/backups/root_backup.tar.gz
cd  /var
sudo tar -cvpzf /home/lag/backups/var_backup.tar.gz

