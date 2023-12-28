cask "blooo" do
  version "2.3.3"
  sha256 "5670be6be893f82cb0f0194d61d9404a8b737544b276e32f817d83ef58bd105d"

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
