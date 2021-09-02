cask "ob-xd" do
  version "2.4"
  sha256 "9d65e1eb1a695475200cb1431589b9508b8ca5db9a2cb6ae2f025cb37a389dda"

  url "https://www.discodsp.net/download/Obxd#{version.no_dots}Mac.zip",
      verified: "discodsp.net/"
  name "OB-Xd"
  desc "Virtual analog synthesizer"
  homepage "https://www.discodsp.com/obxd/"

  livecheck do
    strategy :git
    url "https://github.com/reales/OB-Xd/"
  end

  pkg "OB-Xd #{version}.pkg"

  uninstall pkgutil: %w[
    ob-xdau
    ob-xdcontent
    ob-xdvst3
    ob-xdst
  ]
end
