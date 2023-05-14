cask "scrooo" do
  version "2.0.1"
  sha256 "0f2b35cef5f31a9ec5a30a27c2dbc92c2867f41d18751db7a47e01d85e753897"

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
