cask "full-bucket-mps" do
  version "1.2.1"
  sha256 "f4c80387e1898ec0bda00e9e734a568d4e739bcb8fd408537d0b53be7c546985"

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
