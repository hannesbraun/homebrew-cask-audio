cask "fbvc" do
  version "1.1.2"
  sha256 "984052891ae64a29a5465a27c60871db018ec14f3ff5bc8766ee2faea9e75903"

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
