cask "ob-xd" do
  version "2.5.1"
  sha256 "4d166901569aaccae8fc5c9f98901007aeffa40af9b15d9a844fb0ae33983c7b"

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
