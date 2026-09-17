EAPI=8

inherit desktop

DESCRIPTION="Open source voice and text chat client"
HOMEPAGE="https://fluxer.app"
SRC_URI="https://api.fluxer.app/dl/desktop/canary/linux/x64/latest/tar_gz -> ${P}.tar.gz"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"

RESTRICT="mirror strip"
QA_PREBUILT="/opt/fluxer-canary-bin"

S="${WORKDIR}"

src_prepare() {
	default
	S="$(ls -d "${WORKDIR}"/Fluxer-Canary-*-linux-x64 || die "source dir not found")"
}   

src_install() {
	insinto /opt/fluxer-canary-bin
	doins -r "${S}"/

	fperms 4755 /opt/fluxer-canary-bin/chrome-sandbox

	for size in 16 24 32 48 64 128 256 512; do
		newicon -s "${size}" "${S}"/resources/icons/${size}x${size}.png fluxer-canary-bin.png
	done

	domenu "${FILESDIR}"/fluxer-canary.desktop
}   
