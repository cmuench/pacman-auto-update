# Pacman Auto Update

Keeps all precompiled software packages updated, without user intervention.

Updates are automatically **postponed** under unfavorable conditions:
- 🔋 The **battery** has less than 90% of charge.
- 💸 networkmanager is installed, and the **connection** is guessed as metered.
- 🔒 The package database has a **lock** younger than a day, and older than boot time. Otherwise the lock is automatically removed.


## Installing

In the application **Terminal** enter:

```sh
curl --silent https://raw.githubusercontent.com/cmuench/pacman-auto-update/master/install.sh | bash
```

After that the software will be **automatically enabled**, and also it will automatically build and upgrade its **own package**.

Having this program in the **AUR** is not possible right now, simply because its moderators disagree with having any kind of method for automatically upgrading the system.


## Editing update frequency

By default it updates **hourly**.

**Edit** with:
```sh
sudo rnano /usr/lib/systemd/system/pacman-auto-update.timer
```


## Inspecting status

Of the **service**:
```sh
systemctl status pacman-auto-update
```

Of the **timer**:
```sh
systemctl list-timers pacman-auto-update
```

