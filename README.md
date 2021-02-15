## Description

Keeps packages from compiled repositories updated hourly.

If networkmanager is installed, and the connection is guessed as metered, the update is automatically skipped.

## Installing

The package is avaliable in the Arch User Repository:

https://aur.archlinux.org/packages/pacman-auto-update

## Inspecting status

Of the service:
```sh
systemctl status pacman-auto-update
```

Of the timer:
```sh
systemctl list-timers pacman-auto-update
```
