cask "fb3300" do
  version "1.2.4"
  sha256 "53418e98a3f95bf0e3e2e61a24780df4f449455aeb94966103bad6e77d4d5e1b"

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
