#!/bin/bash

for i in "$@"; do
	echo "$i" :
	if [[ -e "$i" ]]; then 
		echo -n "File type = "
		if [[ -L "$i" ]]; then echo -n "Symbolic link "; fi
		if [[ -b "$i" ]]; then echo -n "Special block "; fi
		if [[ -c "$i" ]]; then echo -n "Special chars "; fi
		if [[ -d "$i" ]]; then echo -n "Folder "; fi
		if [[ -f "$i" ]]; then echo -n "Regular file "; fi
		if [[ -p "$i" ]]; then echo -n "Pipe "; fi
		if [[ -S "$i" ]]; then echo -n "Socket "; fi
		echo ""
		echo -n "Bytes = "
		if [[ -g "$i" ]]; then echo -n "Set-GID "; fi
		if [[ -u "$i" ]]; then echo -n "Set-UID "; fi
		if [[ -k "$i" ]]; then echo -n "Sticky "; fi
		echo ""
		echo -n "Permissions = "
		if [[ -r "$i" ]]; then echo -n "read "; fi
		if [[ -w "$i" ]]; then echo -n "write "; fi
		if [[ -x "$i" ]]; then echo -n "exe "; fi
		echo ""
		if [[ -G "$i" ]]; then echo "Belong to our GID"; fi
		if [[ -O "$i" ]]; then echo "Belong to our UID"; fi
		echo ""
	else
		echo "File does not exists"
	fi
done

