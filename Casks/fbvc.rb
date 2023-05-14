cask "fbvc" do
  version "1.1.1"
  sha256 "1385afbd9ebc8ca4683dd652605916bdcdf162609a94cf907badac303ae80949"

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
