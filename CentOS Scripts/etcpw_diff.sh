#!/bin/bash

sudo cksum /etc/passwd > /home/lindsayg/cksum_etcp_log.txt
sudo cksum /etc/shadow > /home/lindsayg/cksum_etcsh_log.txt

 sudo diff  /home/lindsayg/cksum_etcp_log.txt  /home/lindsayg/orig_cksum_etcpw.txt >> /home/lindsayg/etcp_diff.txt

 sudo diff /home/lindsayg/cksum_etcsh_log.txt  /home/lindsayg/orig_cksum_etcsh.txt >> /home/lindsayg/etcsh_diff.txt




