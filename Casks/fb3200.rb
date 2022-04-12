cask "fb3200" do
  version "1.1.0"
  sha256 "24d2295b5364af4dc727447c1754fba9f90b7beea3307774e2063542f5eef5fa"

  url "https://www.fullbucket.de/music/dl/fb3200_#{version.dots_to_underscores}_mac.pkg"
  name "FB-3200"
  desc "KORG PS-3200 simulation"
  homepage "https://www.fullbucket.de/music/fb3200.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fb3200_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FB3200",
    "de.fullbucket.vst.pkg.FB3200",
    "de.fullbucket.vst3.pkg.FB3200",
  ]
end
