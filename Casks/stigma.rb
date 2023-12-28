cask "stigma" do
  version "1.3.2"
  sha256 "441588f558f131ceabc225071730f0dd040dfdc8f69bae5376d22453924d5960"

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
