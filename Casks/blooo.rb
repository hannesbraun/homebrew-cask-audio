cask "blooo" do
  version "2.3.4"
  sha256 "d5b42016be515398c740bea160bcd7aad60a940fef96d5ee7ca7a2def3b7d4b0"

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
