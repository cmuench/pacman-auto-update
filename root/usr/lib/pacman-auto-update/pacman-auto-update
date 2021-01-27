#! /bin/bash
set -e
trap "" INT QUIT TERM EXIT

if [[ -z "$(nmcli --terse --fields GENERAL.METERED dev show | grep "yes")" ]] &&
[[ ! -f "/var/lib/pacman/db.lck" ]]; then
	sudo pacman --sync --refresh --sysupgrade --quiet --noconfirm
fi
