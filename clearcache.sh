#! /usr/bin/env bash
sync
echo -n "clearing drop caches... "
echo 3 > /proc/sys/vm/drop_caches
echo "done"

echo -n "clearing swap... "
swapoff -a
swapon -a
echo "done"

while true; do
	read -p "clear pacman cache of uninstalled packages? [y/N] " yn
	case $yn in
			[Yy]* ) echo "removing pacman cache..."; pacman -Sc; echo "done"; break;;
			* ) break;;
	esac
done

while true; do
	read -p "clear yay cache of uninstalled packages? [y/N] " yn
	case $yn in
			[Yy]* ) echo -n "removing yay cache... "; remove_yay_cache.sh; echo "done"; break;;
			* ) break;;
	esac
done
