cask "ob-xd" do
  version "2.10"
  sha256 "17727448f7a68e92bae4811c87aa381bf6cea75617b2506f77f60406ef2cedfb"

  url "https://www.discodsp.net/download/Obxd#{version.major_minor.no_dots}Mac.zip",
      verified: "discodsp.net/"
  name "OB-Xd"
  desc "Virtual analog synthesizer"
  homepage "https://www.discodsp.com/obxd/"

  livecheck do
    strategy :git
    url "https://github.com/reales/OB-Xd/"
  end

  pkg "OB-Xd #{version.major_minor}.pkg"

  uninstall pkgutil: %w[
    ob-xdau
    ob-xdcontent
    ob-xdvst3
    ob-xdst
  ]
end
