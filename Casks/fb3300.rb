cask "fb3300" do
  version "1.2.2"
  sha256 "6fe9c7fcc6735a7dfc0e4231a34ab05a06ca61f99ebd39008b636b5356a768aa"

  url "https://www.fullbucket.de/music/dl/fb3300_#{version.dots_to_underscores}_mac.pkg"
  name "FB-3300"
  desc "KORG PS-3300 simulation"
  homepage "https://www.fullbucket.de/music/fb3300.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fb3300_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FB3300",
    "de.fullbucket.vst.pkg.FB3300",
    "de.fullbucket.vst3.pkg.FB3300",
  ]
end
