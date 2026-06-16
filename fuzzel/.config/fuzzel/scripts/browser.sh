#!/usr/bin/env bash

choice=$(printf "Firefox\nPrivate Window\nChromium\nTor"| fuzzel -d)

[ -z "$choice" ] && exit 0

case "$choice" in
    Firefox)
        firefox
        ;;
    "Private Window")
        firefox --private-window
        ;;
    Chromium)
        chromium
        ;;
    Tor)
        tor-browser
        ;;
esac
