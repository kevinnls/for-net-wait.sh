#!/usr/bin/env sh

while : ; do
    if >/dev/null 2>/dev/null ping -c 1 google.com; then
	echo "network restored!"
	exec "$@"
	break
    else
	sleep 60
    fi
done
