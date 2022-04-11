cask "ob-xd" do
  version "2.8"
  sha256 "80bdd8cac9946d55828a47cd832b587be3d2ca46ab30b007033a539f21c22741"

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
