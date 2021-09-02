cask "grain-strain" do
  version "1.0.0"
  sha256 "dfb5f09e975ea279002a403e7bc20773203836f02bcf4e1109afe22ae439b868"

  url "https://www.fullbucket.de/music/dl/grainstrain_#{version.dots_to_underscores}_N_mac.pkg"
  name "Grain Strain"
  desc "Grain straining effect"
  homepage "https://www.fullbucket.de/music/grainstrain.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "grainstrain_#{version.dots_to_underscores}_N_mac.pkg"

  uninstall pkgutil: [
    "com.fullbucket.audiounit.pkg.GrainStrain",
    "com.fullbucket.vst.pkg.GrainStrain",
  ]
end
