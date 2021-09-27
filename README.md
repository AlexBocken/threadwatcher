# threadwatcher
A simple bash script to watch over currently running threads and downloads new media with appropriate names.
MD5 checks are implemented to safe-guard against corrupted files.

This script relies mainly on `dmenu` for interactions.

```
threadwatcher [add URL DL_LOCATION] [list] [edit] [clean]

add URL DL_LOCATION
	downloads specified thread to given location. Paths can be relative to \$HOME or absolute.
list	lists all currently watched URLs and where they are downloading to
edit	open threads file in \$EDITOR/vim to manually edit.
clean	deletes threads file. This will not delete already downloaded material.
prune	manually prune list of threads. Deletes all finished threads from list.
dedupe	[DIR]
	remove all duplicate files from current download directories. (Comparing sha512 sums)
	If no DIR is given, will check all currently downloading directories.
help	display this help and exit.
```

## Installation

### AUR
threadwatcher is in the AUR! Using your favorite AUR package manager, paru for example, it's a simple
```sh
paru -S threadwatcher
```
This is the recommended installation version for Arch-based distros.

### From Source
As the Makefile might suggest, it's
```sh
git clone https://github.com/AlexBocken/threadwatcher
cd threadwatcher
make install
```
root privileges are required for the default install location.
If issues with running the program persist, first check the "Requirements" section below.

## Environment variables
There are some environment variables which can be set to change threadwatchers behaviour:

| variable name          | explanation                                                                                                                      | default                                              |
|------------------------|----------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|
| `TW_THREADWATCHER_DIR` | sets location of file with list of threads                                                                                       | `${XDG_DATA_HOME:-$HOME/.local/share}/threadwatcher` |
| `TW_AUTOPRUNE`         | delete threads out of list if nothing can be found on scan. (Can result in wrong behaviour with unreliable internet connections) | `true`                                               |
| `TW_AUTODEDUPE`        | remove duplicates automatically after each scan. (Using sha521 sums)                                                             | `false`                                              |

## Requirements
Besides the obvious stuff for shell scripts like `sed`,`awk`,`grep` and other base-devel programs, this script relies on `jq` and, of course, `dmenu` (now only optionally relies on dmenu).
Make sure these programs are installed.

## TODO

[ ] differentiate between thread complete and 4chan down (curl error codes don't work because of cloudflare)
