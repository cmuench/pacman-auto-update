# Formed from https://github.com/cmuench/pacman-auto-update <christian@muench-worms.de>
# Maintainer: Zachary Kraehling <zaknyy@protonmail.com>
pkgname=pacman_sync
pkgver=0.01
pkgrel=1
pkgdesc="Systemd service / timer combo for automatic package updates"
arch=('any')
url="https://github.com/7astro7/pacman_sync/tree/testing"
license=('GPL3')
install=${pkgname}.install
changelog=
depends=(systemd)
source=("${pkgname}.service"
        "${pkgname}.timer")
md5sums=('43a49bbd3e115974d287ca3d7bafb0ce'
         '38c176a6fde7a9d254eed95cc6a5e6d3')
package() {
    install -d -m755 "$pkgdir/usr/lib/systemd/system"
    install -m644 ${pkgname}.service "$pkgdir/usr/lib/systemd/system/"
    install -m644 ${pkgname}.timer "$pkgdir/usr/lib/systemd/system/"
}
