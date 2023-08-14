cask "full-bucket-brigade-delay" do
  version "2.0.0"
  sha256 "bca0d3c4537f91cf1ead4e667b6cae6996e2bb1ed2108870d7ece8da5adca408"

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
