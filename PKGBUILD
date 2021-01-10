# Maintainer: Zachary Kraehling <zaknyy@protonmail.com>
pkgname=pacman_sync
pkgver=0.01
pkgrel=1
pkgdesc="Systemd service / timer combo for automatic package updates"
arch=('any')
url="https://github.com/7astro7/pacman_sync.git"
license=('GPL3')
install=${pkgname}.install
changelog=
depends=(systemd)
source=("${pkgname}.service"
        "${pkgname}.timer")
md5sums=() # generate with 'makepkg -g'
package() {
    install -d -m755 "$pkgdir/usr/lib/systemd/system"
    install -m644 ${pkgname}.service "$pkgdir/usr/lib/systemd/system/"
    install -m644 ${pkgname}.timer "$pkgdir/usr/lib/systemd/system/"
}
