#!/bin/bash

input="$1"
output=""

for ((i=${#input};i>=0;i--)); do
	char="${input:$i:1}"
	if [[ $char =~ [A-Z] ]]; then
		output+="${char,,}"
	elif [[ $char =~ [a-z] ]]; then
		output+="${char^^}"
	else output+="$char"
	fi
done

echo "$output"
