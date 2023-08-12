cask "fb3100" do
  version "1.2.1"
  sha256 "0eb7b8d3ff5febd44c34e1d89386f7f152e5f0fa64c03cbbb874ea969e65c446"

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
