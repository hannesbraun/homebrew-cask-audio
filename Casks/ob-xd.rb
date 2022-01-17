cask "ob-xd" do
  version "2.6"
  sha256 "785f1768d35d7510aaba0f2ac7ce9852f0768564de2453a55ad17a5511b3ff14"

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
