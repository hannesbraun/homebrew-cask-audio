cask "fbvc" do
  version "1.1.0"
  sha256 "c793bf357aefa3a74e2afcb36220673ef47810d75c6c7a0477d53946599b9679"

  url "https://www.fullbucket.de/music/dl/fbvc_#{version.dots_to_underscores}_mac.pkg"
  name "Full Bucket Vocoder FBVC"
  desc "KORG Vocoder VC-10 simulation"
  homepage "https://www.fullbucket.de/music/fbvc.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+){2})/)
  end

  pkg "fbvc_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FBVC",
    "de.fullbucket.vst.pkg.FBVC",
    "de.fullbucket.vst3.pkg.FBVC",
    "de.fullbucket.wav.pkg.FBVC",
  ]
end
