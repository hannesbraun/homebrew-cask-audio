cask "scrooo" do
  version "2.0.2"
  sha256 "34cfcbec34a1ef957d711fac9f62ac4fb6805d04f1efe4a29de7fcbc3fd4b26d"

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
