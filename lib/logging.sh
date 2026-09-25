#!/usr/bin/env bash

# define the function
log() {
	# local isolates level variable to this script
	local level="$1"
	# remove the first positional argument
	shift

	printf '%s [%s] %s\n' \
		"$(date '+%Y-%m-%d %H:%M:%S')" \
		"$level" \
		"$*"
}
