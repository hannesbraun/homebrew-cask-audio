cask "ob-xd" do
  version "2.6"
  sha256 "2029bcf0e36e30944812216dba695803eeb398978cc837d4d60bc3cf2b1c4df5"

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
