cask "scrooo" do
  version "2.0.0"
  sha256 "342bfddc92d1720afe3a5f2260484a100400d623fcaa204daa975517df82852a"

  url "https://www.fullbucket.de/music/dl/scrooo_#{version.dots_to_underscores}_mac.pkg"
  name "the scrooo"
  desc "Spectral formant synthesizer"
  homepage "https://www.fullbucket.de/music/scrooo.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "scrooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Scrooo",
    "de.fullbucket.vst.pkg.Scrooo",
    "de.fullbucket.vst3.pkg.Scrooo",
  ]
end
