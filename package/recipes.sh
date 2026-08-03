#! /bin/bash


post_install () {
	systemctl enable --now pacman-auto-update.timer
	systemctl enable --user --global pacman-auto-update-notifier.service
}


post_upgrade () {
	systemctl --system daemon-reload
	systemctl restart pacman-auto-update.timer
	systemctl enable --user --global pacman-auto-update-notifier.service
}


pre_remove () {
	systemctl disable --user --global pacman-auto-update-notifier.service
	systemctl disable --now pacman-auto-update.timer
}


post_remove () {
	systemctl --system daemon-reload
}
