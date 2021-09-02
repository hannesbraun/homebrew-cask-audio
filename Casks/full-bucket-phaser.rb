cask "full-bucket-phaser" do
  version "1.0.0"
  sha256 "192eedf07ed559b9ef48deda479b8a37b30c42109b41e4da2d853cd004ef1d3b"

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
    "com.fullbucket.audiounit.pkg.FBPhaser",
    "com.fullbucket.vst.pkg.FBPhaser",
  ]
end
