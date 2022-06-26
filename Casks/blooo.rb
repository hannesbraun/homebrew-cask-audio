cask "blooo" do
  version "2.2.1"
  sha256 "4dffa792f78cd9dc643cefbc354ca577f248622d2774fc53cc5ad601c11911b9"

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
