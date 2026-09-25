#!/usr/bin/env bash

storage_info() {
	echo "Fileystem usage:"
	df -h -x tmpfs
}

storage_mounts() {
	echo "Mounted filesystems:"
	findmnt
}

storage_lvm() {
	echo "Volume Groups:"
	vgs

	echo
	echo "Logical Volumes:"
	lvs

	echo
	echo "Physical Volumes:"
	pvs
}

storage_block_devices() {
	echo "Block devices:"
	lsblk
}


