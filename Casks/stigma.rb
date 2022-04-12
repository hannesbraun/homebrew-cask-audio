cask "stigma" do
  version "1.3.0"
  sha256 "ffd86b5c96355de141ae0542ec8fbe86b2a5fbcbcd6c9ac80caa1bc330c1fbb6"

  url "https://www.fullbucket.de/music/dl/stigma_#{version.dots_to_underscores}_mac.pkg"
  name "Stigma"
  desc "KORG Sigma KP-30 simulation"
  homepage "https://www.fullbucket.de/music/stigma.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "stigma_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Stigma",
    "de.fullbucket.vst.pkg.Stigma",
    "de.fullbucket.vst3.pkg.Stigma",
  ]
end
