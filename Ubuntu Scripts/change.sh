#!/bin/bash

sudo inotifywait -m ./.bash_history -e create -e moved_to |
	while read -r / create,move,delete ; do
 

