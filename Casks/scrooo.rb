cask "scrooo" do
  version "2.0.3"
  sha256 "216b2f20cff1b0ab75dba25db8d9fb7e988c0259edbaee3f81f72d46d9f381d5"

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
