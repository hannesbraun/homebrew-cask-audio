cask "full-bucket-brigade-delay" do
  version "2.0.0"
  sha256 "7cbe9dc67b75149c4f14c4a8b6c82ffb599dc6e7a92802e6f69fd5c99f659efd"

  url "https://www.fullbucket.de/music/dl/fbdelay_#{version.dots_to_underscores}_mac.pkg"
  name "Full Bucket Brigade Delay"
  desc "BBD analog delay simulation"
  homepage "https://www.fullbucket.de/music/fbdelay.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fbdelay_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FBDelay",
    "de.fullbucket.vst.pkg.FBDelay",
    "de.fullbucket.vst3.pkg.FBDelay",
  ]
end
