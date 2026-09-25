#!/usr/bin/env bash

health_check() {
	log INFO "Running health check"

	echo
	echo "FAILED SERVICES:"
	systemctl --failed --no-pager

	echo
	echo "DISK USAGE:"
	df -lTh -x tmpfs
}
