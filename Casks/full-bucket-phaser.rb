cask "full-bucket-phaser" do
  version "2.0.1"
  sha256 "95d6e8a02cd0941308a2c4593faeff857e30afdb885063c0a6c7830a78af3ee4"

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
