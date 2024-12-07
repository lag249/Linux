#!/usr/bin/env python3

#subprocess allows you to use a linux command as a variable
import subprocess
import re
#variable for lastlog command 
command = "lastlog"
#to store the result of the lastlog command
result = subprocess.run(command, shell=True, capture_output=True, text=True)
#variable for the output
output = result.stdout

#for the lines in the output, split the lines and loook for those starting with 'lag' - representing a user.
for line in output.splitlines():
	fields = line.split()
#	print(fields)
#	if fields[2] == re.compile(r'(\d{1,3}\.\d{1,3}\.\d{1,3})'):
#if lag is in the first field, login_time is in the 6th position field in the file
	if fields[0] == 'lindsayg':
#		print(fields)
		login_time = fields[5]
#then split that field by the colon so we can isolate the hour
		login_hour = login_time.split(":")
#		print(login_hour)		
		#specify that the first position of the split time field is the hour
		hour = login_hour[0]
#		print(hour) 
#need to set it as an integer or will get errors trying to use the math >=20 to a string
#then look at the hour and see if it is greater than or equal to 20 (8pm) and less than or equal 6am, and if so print the line 
		int_hour = int(hour)
#		if int_hour >= 20 or int_hour <= 6:
		if int_hour <= 20:
			print(line)
#check to look for odd logins
		else:
			print ("lindsayg did not sign in at odd hours")



