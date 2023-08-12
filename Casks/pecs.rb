cask "pecs" do
  version "1.0.2"
  sha256 "43309f5ebf60b600254a24b31006af82713d1c9ef1f9b7a64bc00dd8017df382"

  url "https://www.fullbucket.de/music/dl/pecs_#{version.dots_to_underscores}_mac.pkg"
  name "PECS"
  desc "KORG PE-2000 simulation"
  homepage "https://www.fullbucket.de/music/pecs.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "pecs_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.PECS",
    "de.fullbucket.vst.pkg.PECS",
    "de.fullbucket.vst3.pkg.PECS",
  ]
end
