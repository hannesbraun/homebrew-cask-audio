cask "full-bucket-phaser" do
  version "2.0.0"
  sha256 "66e365205897451f5e6b89fabeb1a98eebb0092201f61a90d4e3c6100e6e8196"

  url "https://www.fullbucket.de/music/dl/fbphaser_#{version.dots_to_underscores}_mac.pkg"
  name "Full Bucket Phaser"
  desc "Analog phaser simulation"
  homepage "https://www.fullbucket.de/music/fbphaser.html"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/v(\d+(?:\.\d+)*)/)
  end

  pkg "fbphaser_#{version.dots_to_underscores}_mac.pkg"

  uninstall pkgutil: [
    "de.fullbucket.audiounit.pkg.FBPhaser",
    "de.fullbucket.vst.pkg.FBPhaser",
    "de.fullbucket.vst3.pkg.FBPhaser",
  ]
end
