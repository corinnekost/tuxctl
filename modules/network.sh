#!/usr/bin/env bash

iptables_list() {
	echo "IPTABLE RULES:"
	iptables -L
}
