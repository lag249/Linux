#!/usr/bin/env python3

import hashlib
#hashlib is similr to cksum

#file to check
file_name = '/etc/passwd'

#correct hash of /etc/passwd
etpw_md5 = '50a399fbf343202a8ed4166a7104e8ab'

#second file to check
file2_name = '/etc/shadow'

#correct hash of /etc/shadow *** run script as sudo
etsh_md5 = '1e6e5109d1dcd3397d44d1d2019a467b'

#open, close, and read the file and calculate the md5sum on the file contents
with open(file_name, "rb") as file_to_check:
	#read contents of file
	data = file_to_check.read()
	#send the contents of the file through hashlib to generate md5 sum
	md5pw_returned = hashlib.md5(data).hexdigest()
	#print(md5pw_returned)
	#print(etpw_md5)
#if statement to compare original md5 with newly calculated
if etpw_md5 == md5pw_returned:
	print("/etc/passwd: OK - No changes")
else: 
	print("/etc/passwd: Failed - Something changed")

##repeat the process for /etc/shadow
with open(file2_name, "rb") as file2_to_check:
	#read contents of file
	data2 = file2_to_check.read()
	#send the contents of the file through hashlib to generate md5sum
	md5sh_returned = hashlib.md5(data2).hexdigest()
	#print(md5sh_returned)
#if statement to compare
if etsh_md5 == md5sh_returned:
	print("/etc/shadow: OK - No changes")
else:
	print("/etc/shadow: Failed - Something changed")