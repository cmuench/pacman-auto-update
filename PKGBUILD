#! /bin/bash

pkgname="pacman-auto-update"
install="install.sh"

pkgdesc="Keeps packages from compiled repositories updated hourly"
url="https://github.com/cmuench/pacman-auto-update"
license=("GPL2")

pkgver="$(date +%s)"
pkgrel=1
arch=("any")

source=("git+${url}")
sha256sums=(SKIP)


depends=(
	pacman-contrib
	systemd
)


package() {
	cp --recursive "${srcdir}/${pkgname}/root"/* "${pkgdir}"
}
