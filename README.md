# Pacman Auto Update

Keeps packages from compiled repositories updated hourly.

Updates are automatically **postponed** under unfavorable conditions:
- 🔋 The **battery** has less than 90% of charge.
- 💸 networkmanager is installed, and the **connection** is guessed as metered.
- 🔒 The package database has a **lock** younger than a day, and older than boot time. Otherwise the lock is automatically removed.


## Installing

Either install from the [**Express Repository**](https://gitlab.com/es20490446e/express-repository/-/wikis/Manual-%F0%9F%94%96/Installing-%F0%9F%93%A5), or in the application **Terminal** enter:

```sh
git clone --depth 1 --shallow-submodules https://github.com/cmuench/pacman-auto-update.git
cd pacman-auto-update
makepkg --syncdeps --needed --rmdeps --force --noconfirm
sudo pacman --upgrade *.pkg.*
```

After installation pacman-auto-update will be **automatically enabled**.

## Inspecting status

Of the **service**:
```sh
systemctl status pacman-auto-update
```

Of the **timer**:
```sh
systemctl list-timers pacman-auto-update
```

