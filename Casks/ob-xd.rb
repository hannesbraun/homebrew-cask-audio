cask "ob-xd" do
  version "2.14"
  sha256 "20540cdd9b6cbe841c4bc0962e03a1c45c7d343db1963db86b35f0b4aa0f43f2"

  url "https://demo.discodsp.com/Obxd#{version.major_minor.no_dots}Mac.zip"
  name "OB-Xd"
  desc "Virtual analog synthesizer"
  homepage "https://www.discodsp.com/obxd/"

  livecheck do
    strategy :page_match
    url :homepage
    regex(/OB-Xd.*(\d+(?:\.\d+)+)/)
  end

  pkg "OB-Xd #{version.major_minor}.pkg"

  uninstall pkgutil: %w[
    ob-xdau
    ob-xdcontent
    ob-xdvst3
    ob-xdst
  ]
end
