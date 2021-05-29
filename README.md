# threadwatcher
A simple bash script to watch over currently running threads and downloads new media with appropriate names.
MD5 checks are implemented to safe-guard against corrupted files.

This script relies mainly on `dmenu` for interactions.

```sh
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

## Requirements
Besides the obvious stuff for shell scripts like `sed`,`awk`,`grep` and other base-devel programs, this script relies on `jq` and, of course, `dmenu`.
Make sure these programs are installed.
