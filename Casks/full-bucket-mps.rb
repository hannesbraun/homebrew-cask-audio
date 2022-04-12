cask "full-bucket-mps" do
  version "1.2.0"
  sha256 "1b7ccc23fd6bbdc21de358ffdb0095537e1a707329edc6ed33280b6fc62ad361"

  url "https://www.fullbucket.de/music/dl/mps_#{version.dots_to_underscores}_mac.pkg"
  name "MPS"
  desc "Musical parameter synthesizer"
  homepage "https://www.fullbucket.de/music/mps.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "mps_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.MPS",
    "de.fullbucket.vst.pkg.MPS",
    "de.fullbucket.vst3.pkg.MPS",
  ]
end
