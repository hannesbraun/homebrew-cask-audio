cask "fb3300" do
  version "1.2.5"
  sha256 "13f5a7951520ab11edfc9e6103bfd5b98e98427f454e293bcfcc0105091969fd"

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

  zap trash: "~/Music/FullBucketMusic/fb3300.ini"
end
