#!/bin/bash

pidwait () {

	if [ -z "$1" ]; then
		echo "Usage: pidwait pid"
		return 1
	fi

	kill -0 "$1" 2>/dev/null
	does_not_exist="$?"

	if [ "$does_not_exist" -ne 0 ]; then
		echo "Process does not exist"
		return 2
	fi

	while kill -0 "$1" 2>/dev/null; do
		sleep 5
	done	

} 
