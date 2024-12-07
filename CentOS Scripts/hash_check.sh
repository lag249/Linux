#!/bin/bash

#command to check file
md5sum -c /etc/passwd /etc/shadow

#if statement to read output and print message showing if file has changed
if OK; then
	echo "No changes to the file"
else
	echo "Something changed"
fi

