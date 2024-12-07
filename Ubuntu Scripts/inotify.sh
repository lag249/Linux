#/bin/bash


 ##use inotify wait to check for modifications or deletions to the /etc/passwd file

	#inotifywait gives output in the format pathname, event, filename
while true; do
	sudo inotifywait -q -e modify,delete /etc/shadow | while read path action file; do
	echo "$(date + '%Y-%m-%d'): /etc/shadow file changes:" >> /home/lag/etcsh_changes.txt
	done
done
