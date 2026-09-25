tuxctl -- The dedicated utility service to make linux administration most efficient
This project contains four directories, bin, lib, modules, and etc.
- bin contains the tuxctl executable program
- lib contains libraries, includes logging, validation, os detection, command detection, filesystem helpers
- modules contains functional utilities
- etc has miscellaneous files like configs
- VERSION follows MAJOR.MINOR.PATCH 
	- major = incompatible CLI changes
	- minor = new functionality
	- patch = fixes

# CLI Design
tuxctl [service,action,check]

## Example
tuxctl help
tuxctl system
tuxctl storage mounts
tuxctl services failed

## concept
- keep services as agnostic as possible to avoid conflict
	- tuxctl firewall status over tuxctl firewalld status
- read-only is default execution 
	- action/change must be explicitly called
- dangerous activity requires an action flag
	- --override:-O
- logging is centralized

