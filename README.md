# threadwatcher
A simple bash script to watch over currently running threads and downloads new media with appropriate names.
MD5 checks are implemented to safe-guard against corrupted files.

This script relies mainly on `dmenu` for interactions.

```
threadwatcher [add URL DL_LOCATION] [list] [edit] [clean]

add URL DL_LOCATION
        downloads specified thread to given locaton. Paths can be relative to HOME or absolute.
list
        lists all currently watched URLs and where they are downloading to
edit
        open threads file in $EDITOR/vim to manually edit error
clean
        deletes threads file. This will not delete already downloaded material.
```

## Installation

### AUR
threadwatcher is in the AUR! Using your favorite AUR package manager, paru for example, it's a simple
```
paru -S threadwatcher
```
This is the recommended installation version for Arch-based distros.

### From Source
As the Makefile might suggest, it's
```
git clone https://github.com/AlexBocken/threadwatcher
cd threadwatcher
make install
```
root privileges are required for the default install location.
If issues with running the program persist, first check the "Requirements" section below.


## Requirements
Besides the obvious stuff for shell scripts like `sed`,`awk`,`grep` and other base-devel programs, this script relies on `jq` and, of course, `dmenu`.
Make sure these programs are installed.


## TODO

[ ] differentiate between thread complete and 4chan down (curl error codes don't work because of cloudflare)
