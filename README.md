# Pacman Auto Update

Keeps packages from compiled repositories updated hourly.

Updates are automatically **postponed** under unfavorable conditions:
- 🔋 The **battery** has less than 90% of charge.
- 💸 networkmanager is installed, and the **connection** is guessed as metered.
- 🔒 The package database has a **lock** younger than a day, and older than boot time. Otherwise the lock is automatically removed.


## Installing

For having automatic updates of this software itself, install from the [**Express Repository**](https://gitlab.com/es20490446e/express-repository/-/wikis/Manual-%F0%9F%94%96/Installing-%F0%9F%93%A5).

Or if you prefer not having to add an extra repo, at the exprense of having to manually update the package, in the application **Terminal** enter:

```sh
curl --silent https://raw.githubusercontent.com/cmuench/pacman-auto-update/master/install.sh | bash
```

After installation the software will be **automatically enabled**.

Having this program in the **AUR** is not possible right now, simply because their moderators disagree with having any kind of method for automatically upgrading the system.


## Inspecting status

Of the **service**:
```sh
systemctl status pacman-auto-update
```

Of the **timer**:
```sh
systemctl list-timers pacman-auto-update
```

