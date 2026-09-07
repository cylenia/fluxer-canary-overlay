EAPI=9
DESCRIPTION="Open source voice and text chat client"
HOMEPAGE="https://fluxer.app"
SRC_URI="https://api.fluxer.app/dl/desktop/canary/linux/x64/latest/tar_gz"
LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RDEPEND=""
DEPEND="${RDEPEND}"
BDEPEND="app-arch/tar"

src_install() {

  mv /var/tmp/portage/net-im/fluxer-9999/work/fluxer-9999/Fl*/ /var/tmp/portage/net-im/fluxer-9999/image
  mkdir -p /var/tmp/portage/net-im/fluxer-9999/image/opt/fluxer
  mv /var/tmp/portage/net-im/fluxer-9999/image/Flux*/* /var/tmp/portage/net-im/fluxer-9999/image/opt/fluxer/
  rm -r /var/tmp/portage/net-im/fluxer-9999/image/Flux*/
}

src_unpack() {
  mkdir -p /var/tmp/portage/net-im/fluxer-9999/work/fluxer-9999
  tar xvzf /var/tmp/portage/net-im/fluxer-9999/distdir/tar_gz -C /var/tmp/portage/net-im/fluxer-9999/work/fluxer-9999
}
