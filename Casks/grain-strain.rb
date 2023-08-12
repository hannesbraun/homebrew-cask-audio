cask "grain-strain" do
  version "1.1.1"
  sha256 "1b40ff7590de91346b79121976df4c345c3c5c9237e5fc5b67a4cf0d47a20a0c"

  url "https://www.fullbucket.de/music/dl/grainstrain_#{version.dots_to_underscores}_mac.pkg"
  name "Grain Strain"
  desc "Grain straining effect"
  homepage "https://www.fullbucket.de/music/grainstrain.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "grainstrain_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.GrainStrain",
    "de.fullbucket.vst.pkg.GrainStrain",
    "de.fullbucket.vst3.pkg.GrainStrain",
  ]
end
