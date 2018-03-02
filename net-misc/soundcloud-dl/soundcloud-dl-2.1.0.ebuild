# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=6

DESCRIPTION="Soundcloud music downloader for Unix, Linux and Mac OS X written in BASH."
HOMEPAGE="https://github.com/RomaniukVadim/soundcloud-dl"
SRC_URI="https://github.com/lukapusic/${PN}/archive/${PVR}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
IUSE=""
DEPEND="dev-python/eyeD3 net-misc/curl"
RESTRICT="mirror"
RDEPEND="${DEPEND}"

src_install() {
	   dobin scdl
	   cp .scdl.cfg $HOME/
}

pkg_postinst() {
	elog "Don't forget to add your own Music path and clientID in $HOME/.scdl.cfg."
}
