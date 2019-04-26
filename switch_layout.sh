#! /usr/bin/env bash

# script to swap keyboard layout between qwerty and dvorak

CURRLAYOUT=$(echo $(setxkbmap -query|grep variant|cut -d' ' -f2- |tr -dc [a-zA-Z])|sed '/dvorak/! s/.*/qwerty/')

if [ "$CURRLAYOUT" = "qwerty" ]
then
	setxkbmap -variant dvorak
else
	setxkbmap -layout us
fi
