cask "full-bucket-brigade-delay" do
  version "2.0.2"
  sha256 "676a278c2264680a8e506040a7ce578345a15d3df0319591ba03f0a11128e4ce"

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
