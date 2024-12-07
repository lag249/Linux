#!/usr/bin/env python3

import subprocess

file1hash=open("/home/lag/etcpw_256.txt")

contents=file1hash.readlines()

print(contents)

##file2hash=open("/home/lag/etcsh_256.txt")

command = "sha256sum -c /etc/passwd"

result = subprocess.run(command, shell=True, capture_output=True, text=True)

#print(result)

output = result.stdout

#print(output)

for lines in contents:
	if lines == output:
		print("File is identical")
	else:
		print("Changes detected")
	 

