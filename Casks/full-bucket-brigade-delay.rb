cask "full-bucket-brigade-delay" do
  version "2.0.0"
  sha256 "fa7285cb551a2ebaa505f342a1bb6654d3cbe3221ddb8845f3ffaef578bf56c7"

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
