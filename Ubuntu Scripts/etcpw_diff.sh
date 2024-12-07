#!/bin/bash

echo "Check performed $(date)" >> /home/lag/etcp_diff.txt
echo "Check performed $(date)" >> /home/lag/etcsh_diff.txt

sudo cksum /etc/passwd > /home/lag/cksum_etcp_log.txt
sudo cksum /etc/shadow > /home/lag/cksum_etcsh_log.txt

sudo diff /home/lag/cksum_etcp_log.txt  /home/lag/orig_cksum_etcpw.txt >> /home/lag/etcp_diff.txt

sudo diff /home/lag/cksum_etcsh_log.txt  /home/lag/orig_cksum_etcsh.txt >> /home/lag/etcsh_diff.txt




