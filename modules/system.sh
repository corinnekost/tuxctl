#!/usr/bin/env bash

system_info() {
	log INFO "Collecting system info..."
	echo "HOSTNAME: $(hostnamectl | grep 'hostname' | awk '{print $3}')"
	echo "KERNEL: $(uname -r)"

	if [[ -r /etc/os-release ]]; then
		source /etc/os-release
		echo "OS: $PRETTY_NAME"
	fi

	echo "UPTIME: $(uptime -p | sed 's/\bup\b//')"
	echo "MEMORY: $(free -h | awk '/^Mem:/ {print "Total: "$2, "Used: "$3, "Free: "$4, "Available: "$7}')"
	echo "CPU: $(lscpu | grep -m1 '^CPU(s):' | awk '{print $2}')"
}
