cask "fb3100" do
  version "1.2.0"
  sha256 "86d74c946620a71665e67a7413eb7d7eee177336258544910f6702c4971ce86b"

  url "https://www.fullbucket.de/music/dl/fb3100_#{version.dots_to_underscores}_mac.pkg"
  name "FB-3100"
  desc "KORG PS-3100 simulation"
  homepage "https://www.fullbucket.de/music/fb3100.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fb3100_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FB3100",
    "de.fullbucket.vst.pkg.FB3100",
    "de.fullbucket.vst3.pkg.FB3100",
  ]
end
