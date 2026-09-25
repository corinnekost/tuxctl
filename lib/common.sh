require_root() {
	if [[ $EUID -ne 0 ]]; then
		echo "ERROR: This command requires root." >&2
		return 1
	fi
}
