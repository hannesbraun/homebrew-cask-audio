cask "blooo" do
  version "2.2.0"
  sha256 "899b818f061ef18c91349e65bdcc352e47dd3e1c2bbbab3ad5ac0306262fee86"

  url "https://www.fullbucket.de/music/dl/blooo_#{version.dots_to_underscores}_mac.pkg"
  name "the blooo"
  desc "Polyphonic synthesizer"
  homepage "https://www.fullbucket.de/music/blooo.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "blooo_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.Blooo",
    "de.fullbucket.vst.pkg.Blooo",
    "de.fullbucket.vst3.pkg.Blooo",
  ]
end
