# Pacman Auto Update

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

## Credits

For a list of contributors, in the application "terminal" type:

> git clone https://github.com/cmuench/pacman-auto-update &> /dev/null; cd pacman-auto-update; git shortlog --summary --numbered --email; cd ..; rm -rf pacman-auto-update

Part of the original source code was found at:

https://www.techrapid.uk/2017/04/automatically-update-arch-linux-with-systemd.html

