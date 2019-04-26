#! /usr/bin/env bash

# removes all yay caches for packages that are not installed
diff <(pacman -Qmq) <(ls /home/ben/.cache/yay) | sed -e '/^[a-zA-Z0-9]/d' -e 's/>\ //' -e 's/^/\/home\/ben\/.cache\/yay\//' | xargs rm -rf
