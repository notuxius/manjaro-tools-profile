# Maintainer: Alexander Mentyu <notuxius@gmail.com>

pkgname=prepare-testing-config-git
pkgver=3195ebf
pkgrel=1
pkgdesc="Prepare testing configuration for Netrunner Rolling Wayland profile"
arch=('x86_64')
url="https://github.com/notuxius/plasma-wayland-testing-manjaro-tools-profile"
license=('GPL3')
depends=('pacman')
makedepends=('git')
provides=('prepare-testing-config')
conflicts=('prepare-testing-config')
source=("git://github.com/notuxius/plasma-wayland-testing-manjaro-tools-profile.git")
md5sums=('SKIP')

pkgver() {
	cd plasma-wayland-testing-manjaro-tools-profile
	git describe --always | sed 's/-/./g'
}

package() {
	cd plasma-wayland-testing-manjaro-tools-profile/iso-profiles/netrunner/plasmawaylandtest/desktop-overlay/usr/bin/
	mkdir -p ${pkgdir}/usr/bin/
	cp prepare-testing-config ${pkgdir}/usr/bin/
}
