cask "stigma" do
  version "1.2.7"

  if MacOS.version <= :mojave
    sha256 "1ce37451515ef553885910d6e5dbd8c926abfab201352e781d33718f51d1008d"
    url "https://www.fullbucket.de/music/dl/stigma_#{version.dots_to_underscores}_mac.pkg"
  else
    sha256 "f887fbea173e2af7268c90b7efe7244e454b3ad26d970b1196391e2e7da764a3"
    url "https://www.fullbucket.de/music/dl/stigma_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  name "Stigma"
  desc "KORG Sigma KP-30 simulation"
  homepage "https://www.fullbucket.de/music/stigma.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  if MacOS.version <= :mojave
    pkg "stigma_#{version.dots_to_underscores}_mac.pkg"
  else
    pkg "stigma_#{version.dots_to_underscores}_METAL_mac.pkg"
  end

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Stigma",
    "de.fullbucket.vst.pkg.Stigma",
  ]
end
