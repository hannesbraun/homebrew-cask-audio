cask "blooo" do
  version "2.3.1"
  sha256 "b39a8c9ca7a8b743ddf2e7b86d508f2977da821ec48a76451885141f6b2c7a29"

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
