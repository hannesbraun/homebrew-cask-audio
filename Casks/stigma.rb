cask "stigma" do
  version "1.3.1"
  sha256 "a5fb57a2513618bd1281e6872f18cfb344d2778655c3148a3245323af330cbf6"

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
